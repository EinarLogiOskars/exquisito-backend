Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reviews do
        resources :comments
      end
      mount_devise_token_auth_for 'User', at: 'auth'
      get 'users/show/:id', to: 'users/users#show'
    end
  end
  
  #line below might need to be uncommented in order to use :authenticate_user!
  mount_devise_token_auth_for 'User', at: 'auth'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
