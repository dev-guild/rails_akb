Rails.application.routes.draw do
  resources :tags
  resources :products
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/index'
  get 'home/about'
  root 'home#index'
end
