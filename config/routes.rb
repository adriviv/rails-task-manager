Rails.application.routes.draw do

 # lire toutes les taches
  get "tasks" => "tasks#index"

  # lire une tache
  get "tasks/:id" => 'tasks#show', as: :task

  # add a tache
  get 'tasks/new' => 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'


  # update a tache
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
