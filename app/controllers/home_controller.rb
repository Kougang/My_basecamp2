class HomeController < ApplicationController
    before_action :authenticate_user!

    # validates :name, presence: true
    # validates :role, inclusion: { in: %w[user admin] }

    def index
      @users = User.all
    end

    def view
      @users = User.all
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to view_path, notice: 'User was successfully deleted.'
    end

    def toggle_role_user

      # ce code se repete dans projects controller
        @user = User.find(params[:id])

        if @user.role == 'user'
          @user.update(role: 'admin')
        else
          @user.update(role: 'user')
        end
        redirect_to view_path, notice: "Le rôle de l'utilisateur a été modifié avec succès."
    end
    
end
