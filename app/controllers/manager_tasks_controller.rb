class ManagerTasksController < ApplicationController

  def index
    @task_list = ManagerTask.all
  end

  def show
    @task = ManagerTask.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
