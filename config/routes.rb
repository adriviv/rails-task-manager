Rails.application.routes.draw do

# resources :tasks
 # lire toutes les taches
  get "tasks" => "tasks#index"

    # add a tache
  get 'tasks/new' => 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'


  # lire une tache
  get "tasks/:id" => 'tasks#show', as: :task




  # update a tache
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
