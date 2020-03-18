Rails.application.routes.draw do
  get 'plants/index'
  get 'plants/show'
  get 'plants/new'
  get 'plants/create'
  get 'plants/edit'
  get 'plants/update'
  get 'plants/delete'
  get 'owners/index'
  get 'owners/show'
  get 'owners/new'
  get 'owners/create'
  get 'owners/edit'
  get 'owners/update'
  get 'owners/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
