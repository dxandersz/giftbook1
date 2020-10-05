


class Api::V1::BooksController < ApplicationController

    def index
        @books = Book.all
        render json: @books
    end

    def show
        @book = Book.find(params[:id])
        render json: @book
    end

    def create
        @book = Book.new(book_params)

        if @book.save
            render json: @book
        else
            render error: { error: 'Unable to create book.' }, status: 400
        end
    end

    def update
        @book = Book.find(params[:id])
        if @book.update_attributes(book_params)
            redirect_to :action => 'show', :id => @book
        else
            render json: { error: 'Unable to update user.' }, status: 400
        end
    end



    def destroy
        Book.find(params[:id]).destroy
        redirect_to :action => 'index'
    end

    private

    def book_params
        params.require(:book).permit(:title, :author, :description, :price, :category, giftbox_ids: [])
    end

    def find_book
        @book = Book.find(params[:id])
    end
end
