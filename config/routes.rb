Rails.application.routes.draw do
  resources :mstatuses
  get 'user/index'
  get 'user/show'
  get 'dashboard/index'
  resources :mcategories
  resources :mlocations
  resources :maccounts
  resources :mtypes
  resources :mentries
  resources :searches
  devise_for :users

  root to: 'dashboard#index'
  post '/', to: 'dashboard#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
