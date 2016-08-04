class TasksController < ApplicationController

def index
  @tasks = Task.all
end

def show
  
end

def new
  @task = Task.new
end

def create
  @task = Task.new(task_params)
  @list = @task.list
  if @task.save
    redirect_to @list
  else
    render :new
  end
end






private

def task_params
  params.require(:task).permit(:name, :due_date, :completed, :list_id)
end


end
