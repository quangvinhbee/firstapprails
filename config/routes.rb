Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: "articles#index"

  resources :authors do
    post 'books/new' => :createbook
  end
  resources :books
  resources :categories
  resources :order_items
  resource :cards
  resources :articles do
    resources :comments
  end
end
