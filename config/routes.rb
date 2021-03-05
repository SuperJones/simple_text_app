Rails.application.routes.draw do
  resources :conversations
  get 'conversations/show'
  get 'conversations/index'
  get 'conversations/new'
  get 'conversations/create'
  get 'conversations/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
