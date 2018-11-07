Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new', as: :new_task
  get 'tasks/:id', to: "tasks#show", as: :task
  post 'tasks', to: 'tasks#create'
  patch 'tasks/:id', to: 'tasks#update', as: :update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  delete 'tasks/:id', to: 'tasks#destroy'
end

# we need to place more specific routes on top (eg. /new before /:id)
