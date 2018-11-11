Rails.application.routes.draw do
  # get 'images/index'
  # get 'images/show'
  # get 'images/new'
  # get 'images/edit'
  # get 'companies/index'
  # get 'companies/show'
  # get 'companies/new'
  # get 'companies/edit'
  resources :cars
  resources :companies
  resources :images
  root "companies#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
