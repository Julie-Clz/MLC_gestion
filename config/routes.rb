Rails.application.routes.draw do
  root to: 'pages#home'
  get '/about', action: :about, controller: 'pages'

  resources :services
  resources :contacts, only: [:new, :create]
 
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
