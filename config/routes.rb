Rails.application.routes.draw do
  root :to => 'pages#home' # Homepage

  # get '/buildings' => 'buildings#index'
  get '/buildings/new' => 'buildings#new', :as => 'new_building'
  # post '/buildings' => 'buildings#create'
  # get 'buildings/:id' => 'buildings#show', :as => 'building'
  # get 'buildings/:id/edit' => 'buildings#edit', :as => 'edit_building'
  # post '/buildings/:id' => 'buildings#update'
  # delete '/buildings/:id' => 'buildings#destroy'

  # get '/architects' => 'architects#index'
  get '/architects/new' => 'architects#new', :as => 'new_architect'
  # post '/architects' => 'architects#create'
  # get 'architects/:id' => 'architects#show', :as => 'architect'
  # get 'architects/:id/edit' => 'architects#edit', :as => 'edit_architect'
  # post '/architects/:id' => 'architects#update'
  # delete '/architects/:id' => 'architects#destroy'

  get '/login' => 'session#new' # Sign-in page
  post '/login' => 'session#create' # Path to sign-in form
  delete '/login' => 'session#destroy' # Path to logout

  resources :users, :only => [:index, :new, :create]
  resources :architects
  resources :buildings

  # get 'users/new'
  # get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
