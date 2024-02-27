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

  get '/groups', to: 'groups#index'
  get '/groups/:id', to: 'groups#show'
  get '/groups/:id/:month', to: 'groups#show'

  get '/payers', to: 'payers#index'
  get '/payers/:month', to: 'payers#index'

  get '/test', to: 'test#index'
end
