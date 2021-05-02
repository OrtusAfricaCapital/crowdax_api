Rails.application.routes.draw do
  
  root 'static#home'
  
  namespace :api, defaults: { format: :json } do
    namespace :v1 do

      resources :sessions, only: [:create]
      resources :registrations, only: [:create]
      delete :logout, to: "sessions#logout"
      get :logged_in, to: "sessions#logged_in"
      
      resources :ventures #, :only [:show, :index, :create]
        
    end
  end
  
end
