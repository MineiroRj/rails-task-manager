Rails.application.routes.draw do
  # read
  get 'tasks', to: 'tasks#index'
  get "tasks/new", to: "tasks#new", as: :new_task

  get 'tasks/:id', to: 'tasks#show', as: :task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  # create
  post "tasks", to: "tasks#create"

  # update

  patch "tasks/:id", to: "tasks#update"

  # destroy
  delete "tasks/:id", to: "tasks#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
