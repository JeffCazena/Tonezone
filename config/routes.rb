Tonezone::Application.routes.draw do

  devise_for :users
 
  root :to => 'splash#index'

  resources :users, only: [:edit, :show, :update]
  resources :items

  #get "/items", to: "items#index", as: "user_root"
  
end

