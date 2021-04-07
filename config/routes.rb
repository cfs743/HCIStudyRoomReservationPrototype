Rails.application.routes.draw do
  # get 'reservation/new'
  # get 'reservation/create'
  # get 'reservation/confirmation'
  # get 'method/method1'
  # get 'method/method2'
  # get 'method/method3'
  get 'home/index'
  get 'home/start'
  resources :reservation
  resources :method

  root 'home#index'
end
