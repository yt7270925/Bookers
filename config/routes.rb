Rails.application.routes.draw do
  # get 'books' => 'books#index'
  # get 'books' => 'books#new'
  # post 'books' => 'books#create'
  # get 'books/:id' => 'books#show', as: 'show'
  # get 'books/:id/edit' => 'books#edit', as: 'edit'
  # patch 'books/:id' => 'books#update', as: 'update'
  # delete 'books/:id' => 'books#destroy', as: 'destroy'
  root :to => 'homes#top'

  resources :books

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
