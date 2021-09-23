Rails.application.routes.draw do
  get "bienvenida", to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  
  resources :stores
  
  resources :products

  resources :categories  
  
  post "/search", to: "home#search", as: "search"

end
