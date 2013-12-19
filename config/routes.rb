Depot::Application.routes.draw do
  
  resources :carts

  resources :line_items

  root "store#index", as: 'store'

  resources :products
end
