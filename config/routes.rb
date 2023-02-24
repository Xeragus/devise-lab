Rails.application.routes.draw do
  devise_for :users, {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"

  get :products, to: "products#index"
  get 'products/show', to: 'products#show'
end
