Rails.application.routes.draw do
  resources :bb_rentals
  resources :bb_movies
  resources :bb_clients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "bb_clients#index"
end
