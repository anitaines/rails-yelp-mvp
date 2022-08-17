Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants, except: [:edit, :update, :destroy] do

    # GET "restaurants/38/reviews/new"
    # POST "restaurants/38/reviews"
    # resources :reviews, only: [:new, :create]

    # POST "restaurants/38/reviews"
    resources :reviews, only: [:create]

  end

end
