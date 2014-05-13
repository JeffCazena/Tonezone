Tonezone::Application.routes.draw do

  devise_for :users
 
  root :to => 'splash#index'

  resources :users
  resources :items

  #get "/item", to: "items#show", as: "item_root"
  
end

