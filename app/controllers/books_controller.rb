class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:show,:index]
    def index
      @books = Book.all

      @order_item = current_order.order_items.new
    end
    def show
      @book = Book.find(params[:id])
      @order_item = current_order.order_items.new
    end
    def new
      @book = Book.new
      @order_item = current_order.order_items.new
      @id = params
    end
    def create
        @book = Book.new(book_params)
        if @book.save
          redirect_to @book
        else
          render :new
        end
    end
    private
    def book_params
      params.require(:book).permit(:title,:description,:price,:author_id,:category_id)
    end
end
  