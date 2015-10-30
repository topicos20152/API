class UsersController < ApplicationController
  before_action :set_user
  before_filter :set_default_response_format
  before_filter :check_token, except: :request_access_token
  skip_before_filter :verify_authenticity_token

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render :show, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render :show, status: :ok, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

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
    render 'tasks/index'
  end

  private
    def set_default_response_format
      request.format = :json
    end

    def set_user
      @user = User.find(params[:id])
    end

    def check_token
      access_token = params[:access_token]
      unless @user.check_access_token(access_token)
        render json: "Invalid access token", status: :unauthorized
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params[:user]
    end
end
