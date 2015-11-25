class Api::V1::TasksController < Api::V1::BaseController
  before_action :set_task, only: [:show]
  
  # GET /tasks/1
  def show
  end

  def pushwoosh_notify
    @task.log_device
  end

  private
  
    def set_task
      @task = Task.find(params[:id])
    end

    def set_default_response_format
      request.format = :json
    end
end
