Rails.application.routes.draw do
  root "articles#index"

  resources :authors do
    post 'books/new' => :createbook
  end
  resources :books
  resources :categories,only:[:show]
  resources :order_items
  resource :cards, only:[:show]
  resources :articles do
    resources :comments
  end
end
