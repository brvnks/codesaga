class TasksController < ApplicationController

  def new
  end

  def create
    @task = Task.new(params.require(:task).permit(:description, :status))
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(params.require(:task).permit(:description, :status))
    redirect_to root_path
  else
    render :new
    end

    def destroy
    task = Task.find(params[:id]) # não precisamos de @ pois não temos view que usará esse objeto
    task.destroy #destrói a tarefa encontrada
    redirect_to root_path
  end
end
