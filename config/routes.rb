Rails.application.routes.draw do
  get 'home/top'
  resources :users
  resources :books
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
