class LogoutController < ApplicationController
  def destroy
    sign_out(current_user)
    redirect_to root_path, notice: 'Vous avez été déconnecté avec succès.'
  end
end
