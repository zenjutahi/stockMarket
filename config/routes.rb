Rails.application.routes.draw do
  # create the root/home route
  root 'home#index'

  get 'home/about'
end
