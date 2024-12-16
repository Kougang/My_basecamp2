class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    # before_action :set_project
    before_action :authenticate_user!

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name])
    end

    # Création d'une pièce jointe

    def create
      @attachment = @project.attachments.build(attachment_params)
      @attachment.user = current_user
  
      if @attachment.save
        redirect_to project_path(@project), notice: 'Attachment uploaded successfully.'
      else
        redirect_to project_path(@project), alert: @attachment.errors.full_messages.to_sentence
      end
    end

  # def create
  #   @attachment = @project.attachments.build(attachment_params)
  #   @attachment.user = current_user

  #   if @attachment.save
  #     redirect_to project_path(@project), notice: 'Attachment added successfully.'
  #   else
  #     redirect_to project_path(@project), alert: 'Failed to add attachment.'
  #   end
  # end

  # Suppression d'une pièce jointe
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
    params.require(:attachment).permit(:name, :format)
  end

end
