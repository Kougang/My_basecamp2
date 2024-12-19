Rails.application.routes.draw do
  get 'roles/nominate_admin'
  get 'roles/remove_admin'
  get 'logout/destroy'
  devise_for :users


  # delete 'users/:id', to: 'home#destroy', as: 'delete_user'
  delete 'users/:id', to: 'home#destroy', as: :delete_user

  put 'toggle_role_user/:id', to: 'home#toggle_role_user', as: 'toggle_role_user'
  # put 'show/:id', to: 'projects#show', as: 'show_role_user'

  # Route spécifique pour la suppression d'un projet
  get '/logout', to: 'logout#destroy', as: :logout

  root "home#index"
  resources :projects

  post 'projects/:id/add_user', to: 'projects#add_user', as: 'project_add_user'

  get 'view', to: 'home#view'
  get 'index', to: 'projects#index'

  # add attachments roots
  delete 'projects/:project_id/attachments/:id', to: 'attachments#destroy', as: :destroy_attachment
  resources :projects do
    resources :attachments, only: [:create]
  end

  # add threads and message roots
  
  resources :projects do
    resources :t_threads, only: [:new, :create, :edit, :update, :destroy] do
      resources :messages, only: [:new, :create, :edit, :update, :destroy]
    end
  end
  
end
