class AttachmentsController < ApplicationController
  before_action :set_project
  before_action :authenticate_user!
  
  def set_project
    @project = Project.find(params[:project_id])
  end
  def create
    @attachment = @project.attachments.build(attachment_params)
    @attachment.user = current_user

    if @attachment.save
      redirect_to project_path(@project), notice: 'Attachment uploaded successfully.'
        Rails.logger.debug "dans le bloque du controlleur d enregistrement attachement controller"
        Rails.logger.debug params.inspect

    else
      redirect_to project_path(@project), alert: @attachment.errors.full_messages.to_sentence
    end
  end

  def destroy
    @attachment = @project.attachments.find(params[:id])
    if @attachment.user == current_user || @project.admin == current_user
      @attachment.destroy
      redirect_to project_path(@project), notice: 'Attachment deleted successfully.'
    else
      redirect_to project_path(@project), alert: 'You are not authorized to delete this attachment.'
    end
  end

  
  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def attachment_params
    params.require(:attachment).permit(:file)
  end
end
