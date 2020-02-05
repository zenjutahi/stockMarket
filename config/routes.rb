Rails.application.routes.draw do
  resources :stocks
  devise_for :users
  # create the root/home route
  root 'home#index'
  get 'home/about'

  post "/" => 'home#index'
end
