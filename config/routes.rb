Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :show, :edit, :update, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/posts', to: 'posts#index'
  get '/posts/new', to: 'posts#new'
  get '/posts/:id', to: 'posts#show'
  get '/posts/:id/edit', to: 'posts#edit'
  put '/posts/:id', to: 'posts#update'
  get '/posts', to: 'posts#create'
  delete '/posts/:id', to: 'posts#destroy'
end