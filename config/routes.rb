Rails.application.routes.draw do  
  devise_for :users , controllers: {
        registrations: 'users/registrations'
      }  
  resources :apps
  resources :stores,:makers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "apps#index"
end
