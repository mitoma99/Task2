Rails.application.routes.draw do
  get 'books/new'
  get '/' => 'homes#top', as: 'root'
  #root to: 'homes#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  patch 'lists/:id' => 'lists#update', as: 'update_list'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
