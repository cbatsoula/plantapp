Rails.application.routes.draw do

  resources :owners

  resources :plants
  patch 'plants/:id', to: 'plants#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
