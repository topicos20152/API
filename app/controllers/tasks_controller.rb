class TasksController < ApplicationController
  before_action :set_task, only: [:show]
  before_filter :set_default_response_format
  skip_before_filter :verify_authenticity_token

  # GET /tasks.json
  def index
    @tasks = Task.all
  end
  
  # GET /tasks/1.json
  def show
  end

  private
  
    def set_task
      @task = Task.find(params[:id])
    end

    def set_default_response_format
      request.format = :json
    end
end
