Rails.application.routes.draw do
  resources :skills
  get 'reservation/new' => 'reservation#new'
  get 'reservation/confirmation'
  get 'method/method1'
  get 'method/method2'
  get 'method/method3'
  get 'home/index'
  get 'home/start'
  get 'home/download_schedule'

  root 'home#index'
end
