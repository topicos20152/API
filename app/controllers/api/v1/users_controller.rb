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
    @tasks = @user.tasks
    @tasks = @tasks.where(:attachment.ne => nil) if params[:has_attachments] 
    @tasks = @tasks.where(:opened_date.gte => params[:opened_date]) if params[:opened_date]
    @tasks = @tasks.where(:delivery_date.gte => params[:delivery_date]) if params[:delivery_date]
    render 'api/v1/tasks/index'
  end

  # GET /users/1/courses
  def courses
    @courses = @user.courses
    render 'api/v1/courses/index'
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
