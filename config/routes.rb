Rails.application.routes.draw do
  root :to => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books
  get 'books' => 'books#index', as: 'books'
  get 'books/:id/edit' => 'books#edit', as: 'book_edit'
  get 'books/:id' => 'books#show', as: 'book'
  delete 'books/:id' => 'books#destroy', as: 'book_destroy'
end
