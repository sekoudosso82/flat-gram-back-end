Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :comments
    end
  end
  namespace :api do
    namespace :v1 do
      resources :likes
    end
  end
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users
      post '/signup', to: "users#create"
      post "/login", to: "auth#login"

      get '/auto_login', to: 'auth#auto_login'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
