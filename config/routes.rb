Rails.application.routes.draw do
  
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root to: "customers#index"
  
  authenticate :admin do 
    resources :customers  
  end 
end
