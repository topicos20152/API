class Api::V1::TasksController < Api::V1::BaseController
  before_action :set_task, only: [:show]
  
  # GET /tasks/1
  def show
    @user = User.find(params[:user_id]) if params[:user_id]
    @user.check_task(@task) if @user
  end

  private
  
    def set_task
      @task = Task.find(params[:id])
    end

    def set_default_response_format
      request.format = :json
    end
end
