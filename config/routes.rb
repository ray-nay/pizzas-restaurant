Rails.application.routes.draw do
  get 'restaurant/pizzas'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: [:index, :show, :destroy]
  resources :pizzas, only: :index
  resources :restaurant_pizzas, only: [:index, :create]
end
