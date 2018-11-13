Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'product/new', to: "product#new"
  get 'product', to: "product#index"
  post 'product/new', to: "product#create"

  root to: 'product#index'

end
