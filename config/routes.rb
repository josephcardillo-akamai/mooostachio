Rails.application.routes.draw do
  get 'dashboard/index'
  resources :mcategories
  resources :mlocations
  resources :maccounts
  resources :mtypes
  resources :mentries
  devise_for :users

  root to: 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
