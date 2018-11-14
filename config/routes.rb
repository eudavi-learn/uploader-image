Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'product/new', to: "product#new", as: 'new_product'
  get 'products', to: "product#index", as: 'products'
  post 'product/new', to: "product#create", as: 'create_product'

  root to: 'product#index'

end
