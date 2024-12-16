class ProjectsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_project, only: [:edit, :update, :destroy, :show, :add_user]

    def index
        @projects = Project.all
    end

    def new
        @project = Project.new
    end

    def show
        @project = Project.find(params['id'])
        @user_project = UserProject.new # Créer une nouvelle instance de UserProject


    end

    def create
        @project = Project.new(permitted_params)
        if @project.save
            redirect_to project_path(@project)
        else
            render :new
        end
        
    end

    def edit
    end

    def update
        if @project.update(permitted_params)
            redirect_to project_path(@project)
        else
            render :edit
        end
    end 

    def destroy
        @project = Project.find(params[:id])

        # Récupérer les utilisateurs associés au projet
        @users = @project.users
    
        # Supprimer les utilisateurs associés
        @users.destroy_all if @users.any?
        # @project = Project.find(params[:id])
        @project.destroy
        
        redirect_to projects_path, notice: "Le projet a été supprimé avec succès."
    end


    def add_user
        if current_user.role == 'admin'
          user = User.find_by(email: params[:email])
          if user
            if @project.users.include?(user)
              flash[:alert] = "L'utilisateur est déjà affecté à ce projet."
            else
              @project.users << user
              flash[:notice] = "L'utilisateur a été ajouté au projet avec succès."
            end
          else
            flash[:alert] = "L'utilisateur avec l'adresse e-mail fournie n'existe pas."
          end
        else
          flash[:alert] = "Vous n'êtes pas autorisé à effectuer cette action."
        end
        redirect_to project_path(@project)
    end

    protected

    def permitted_params
        params.require(:project).permit(:name, :description)
    end

    def set_project
        @project = Project.find(params['id'])
    end


end
