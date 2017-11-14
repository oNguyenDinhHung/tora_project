Rails.application.routes.draw do  
  devise_for :users , controllers: {
        registrations: 'users/registrations'
      }
  resources :apps
=begin
  resources :apps do
  	member do
  		resources :photos,only: [:create,:destroy]
  	end
  end
=end
  resources :stores,:makers,:categories,:apptypes,:reviews,:kuchikomis
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "apps#index"
  mount ActionCable.server => '/cable'#khong co dong nay thi AC broadcast du lieu nhung cacs client se khong nhan duoc gi dau.
end
