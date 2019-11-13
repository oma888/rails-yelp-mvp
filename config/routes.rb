Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end

# ceci en dessous remplace par code ci dessus
# get 'restaurants', to: 'restaurants#index', as: :restaurants
# get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
# post 'restaurants', to: 'restaurants#create'
# get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
# get 'restaurants/:id/reviews/new', to: 'reviews#new'
# post 'restaurants/:restaurant_id/reviews',    to: 'reviews#create'
# get 'restaurants/:id/reviews', to: 'reviews#index'

  # resources :reviews, only: [ :show, :edit, :update, :destroy ]
