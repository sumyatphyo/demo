Rails.application.routes.draw do
  get 'product/new'
  root 'welcome#new'
  get    'signup'   => 'signup#new'
  post   'signup'   => 'signup#create'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get 'logout' => 'sessions#logout'
  delete 'logout' => 'sessions#logout'
  get    'category'   => 'category#new'
  post    'category'   => 'category#create'
  get    'category/index'   => 'category#index'
  get    'product/:id' => 'product#show', as: 'product_show'
  get    'product/:id/new'   => 'product#new', as: 'product_renew'
  post   'product/:id/new'   => 'product#create'
  delete  'product/delete' => 'product#delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
