Rails.application.routes.draw do
  resources :outgoing_mails
  resources :sections
  resources :users
  get 'home/index'
  
  root "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
