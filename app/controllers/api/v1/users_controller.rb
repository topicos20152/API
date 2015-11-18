class Api::V1::UsersController < Api::V1::BaseController
  before_action :set_user
  before_filter :check_token, except: :request_access_token


  # POST /users/1
  def request_access_token
    @access_token = @user.generate_access_token
    unless @user.save
      render json: @user.erros, status: :unprocessable_entity
    end
  end

  # GET /users/1/tasks

  def tasks
    @tasks = @user.tasks(params[:q])
    render 'api/v1/tasks/index'
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def check_token
      access_token = params[:access_token]
      unless access_token and @user.check_access_token(access_token)
        render json: "Invalid access token", status: :unauthorized
      end
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params[:user]
    end
end
