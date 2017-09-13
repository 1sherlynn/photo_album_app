Rails.application.routes.draw do
  devise_for :users

  root "photos#index"

  resources :albums do 
  	resources :photos do 
  		resources :comments 
  	end
  end


end
