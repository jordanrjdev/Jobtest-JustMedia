Rails.application.routes.draw do
  get "bienvenida", to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "stores", to: "stores#index"
  get "stores/new", to: "stores#new"
  get "stores/:id", to: "stores#show"
  get "stores/:id/edit", to: "stores#edit", as: :store_edit
  patch "stores/:id", to: "stores#update", as: :store
  post "stores", to: "stores#create"
  delete "stores/:id", to: "stores#destroy"
  
  get "products", to: "products#index"
  get "products/new", to: "products#new"
  get "products/:id", to: "products#show"
  get "products/:id/edit", to: "products#edit", as: :product_edit
  patch "products/:id", to: "products#update", as: :product
  post "products", to: "products#create"
  delete "products/:id", to: "products#destroy", as: :product_delete

  get "categories", to: "categories#index"
  get "categories/new", to: "categories#new"
  get "categories/:id", to: "categories#show"
  get "categories/:id/edit", to: "categories#edit", as: :category_edit
  patch "categories/:id", to: "categories#update", as: :category
  post "categories", to: "categories#create"
  delete "categories/:id", to: "categories#destroy"
  
end
