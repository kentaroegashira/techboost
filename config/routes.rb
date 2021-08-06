Rails.application.routes.draw do
  get 'sessions/new'
  root 'pages#index'
  get 'pages/help'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :topics
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  get'/comments/:topic_id/new', to: 'comments#new', as: 'comments'
  post'/comments/:topic_id/create', to: 'comments#create', as: 'comments_create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
