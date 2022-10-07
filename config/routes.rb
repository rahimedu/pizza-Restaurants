Rails.application.routes.draw do
  resources :restaurants, only: [:index,:show,:destroy]
  resources :restaurant_pizzas, only:[:create]
  resources :pizzas, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
