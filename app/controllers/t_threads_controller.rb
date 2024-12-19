class TThreadsController < ApplicationController
  before_action :set_project
  before_action :authorize_admin!, only: [:new, :create, :edit, :update, :destroy]

  def new
    @thread = @project.threads.new
  end

  def create
    @thread = @project.threads.new(thread_params)
    @thread.user = current_user # L'utilisateur connecté (doit être admin)

    if @thread.save
      redirect_to @project, notice: "Thread created successfully!"
    else
      render :new
    end
  end

  def edit
    @thread = @project.threads.find(params[:id])
  end

  def update
    @thread = @project.threads.find(params[:id])

    if @thread.update(thread_params)
      redirect_to @project, notice: "Thread updated successfully!"
    else
      render :edit
    end
  end

  def destroy
    @thread = @project.threads.find(params[:id])
    @thread.destroy
    redirect_to @project, notice: "Thread deleted successfully!"
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def thread_params
    params.require(:thread).permit(:title, :content)
  end

  def authorize_admin!
    unless current_user.admin_of?(@project)
      redirect_to @project, alert: "Only project admins can perform this action."
    end
  end
end
