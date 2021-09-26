class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def creste
    @task = Task.creste(task_params)
    redirect_to tasks_parh
  end

  def edit
    @task = Task.find(params[:id])
  end

  private
  def task_params
    params .require(:task).permit(:title)
  end
end
