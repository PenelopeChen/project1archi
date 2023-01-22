Rails.application.routes.draw do
  root :to => 'pages#home' # Homepage

  get 'buildings/new'
  get 'buildings/index'
  get 'buildings/show'
  get 'buildings/edit'
  get 'architects/new'
  get 'architects/index'
  get 'architects/edit'
  get 'architects/show'

  get '/login' => 'session#new' # Sign-in page
  post '/login' => 'session#create' # Path to sign-in form
  delete '/login' => 'session#destroy' # Path to logout

  resources :users, :only => [:new, :create]
  resources :architects
  resources :buildings

  get 'users/new'
  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
