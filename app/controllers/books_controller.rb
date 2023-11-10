class BooksController < ApplicationController
    def index
    end

    def newbook
    end

    def create
        # Get the params from the form
        title = params[:title]
        author = params[:author]
        description = params[:description]  

        # Create a new book record
        Book.create(title:title,author:author,description:description)

        # redirect to books path
        redirect_to books_path

    end

    def modify
        @book = Book.find(params[:id])
    end

    def update
        # Get the current book to edited/update
        @book = Book.find(params[:id])

        # Get the params from the form
        @book.update(title:params[:book][:title],author:params[:book][:author],description:params[:book][:description])

        # redirect to books path
        redirect_to books_path
    end

    def delete
        @book = Book.find(params[:id])

        @book.destroy

        redirect_to books_path
    end
end