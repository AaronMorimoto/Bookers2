Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  #get 'books/:book_id' => 'books#show', as: 'book_id'
  resources :books, only: [:index, :show, :create, :edit, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  #get 'books/:book_id' => 'books#show', as: 'book_id'
end
