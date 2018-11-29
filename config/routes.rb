Rails.application.routes.draw do
  resources :hells
  get 'session/login'

  post 'session/create'

  get 'session/logout'

  resources :users
  root to: 'hells#index'

  get 'logic/input'

  get 'logic/output'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
