Rails.application.routes.draw do
  #root 'home#index'

  resources :poderes
  resources :personagens

  root 'home#index'
end
