Rails.application.routes.draw do
  resources :comments
  resources :workouts
  resources :users
  get "/me", to: "users#show"
  patch "/workouts/:id", to: "workouts#update"
  delete "/workouts/:id", to: "workouts#destroy"
  patch "/workouts/:id/like", to: "workouts#increment_likes"
  post "/signup", to: "users#create"
  post "/workouts", to: "workouts#create"
  get "/workouts", to: "workouts#index"
  get "/workouts/:id", to: "workouts#show"
  post "/comments", to: "comments#create"
  get "/comments", to: "comments#index"
  get "/comments/:id", to: "comments#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
