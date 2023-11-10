  Rails.application.routes.draw do

  get '/books', to: 'books#index'
  get '/books/new', to: 'books#newbook'
  post '/books', to: 'books#create'
  get '/book/:id', to: 'books#modify', as: :modify_book
  patch '/book/:id', to: 'books#update', as: :book
  delete '/book/:id', to: 'books#delete', as: :delete_book
end
