class ManagerTasksController < ApplicationController

  before_action :set_manager_task, only: [:show, :edit, :update, :destroy]

  def index
    @manager_tasks = ManagerTask.all
  end

  def show
  end

  def new
    @manager_task = ManagerTask.new
  end

  def create
    @manager_task = ManagerTask.new(manager_task_params)
    @manager_task.save

    redirect_to manager_tasks_path(@manager_task)

  end

  def edit
  end

  def update
    @manager_task.update(manager_task_params)

    redirect_to manager_tasks_path(@manager_task)

  end

  def destroy
    @manager_task.destroy

    redirect_to manager_tasks_path(@manager_task)

  end


    private

  def manager_task_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:manager_task).permit(:name, :description, :due_date)
  end


  def set_manager_task
    @manager_task = ManagerTask.find(params[:id])

  end
end
