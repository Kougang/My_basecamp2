class MessagesController < ApplicationController
  before_action :set_thread

  def new
    @thread = TThread.find(params[:t_thread_id]) 
    @message = @thread.messages.new
  end

  def create
    @message = @thread.messages.new(message_params)
    @message.user = current_user # L'utilisateur connecté
    puts "utilisateur courant dans messages: #{ @message.user}"

    if @message.save
      redirect_to project_t_thread_path(@thread.project, @thread), notice: "Message posted successfully!"
    else
      render :new
    end
  end

  def edit
    @message = @thread.messages.find(params[:id])
  end

  def update
    @message = @thread.messages.find(params[:id])

    if @message.update(message_params)
      redirect_to project_t_thread_path(@thread.project, @thread), notice: "Message updated successfully!"
    else
      render :edit
    end
  end

  def destroy
    @message = @thread.messages.find(params[:id])
    @message.destroy
    redirect_to project_thread_path(@thread.project, @thread), notice: "Message deleted successfully!"
  end

  private

  def set_thread
    @thread = TThread.find(params[:t_thread_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
