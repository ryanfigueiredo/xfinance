Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "dashboard#index"

  get '/dashboard', to: 'dashboard#index'
  get '/dashboard/:month', to: 'dashboard#index'

  resources :finance_transactions

  get '/group', to: 'group#index'
  get '/group/:id', to: 'group#show'
  get '/group/:id/:month', to: 'group#show'

  get '/payer', to: 'payer#index'
  get '/payer/:month', to: 'payer#index'

  get '/test', to: 'test#index'
end
