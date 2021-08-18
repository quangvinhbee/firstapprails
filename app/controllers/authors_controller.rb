class AuthorsController < ApplicationController
   before_action :authenticate_user!, except: [:show,:index]
    def index
        @authors = Author.all
    end
    def show
      @author = Author.find(params[:id])
      @books = Book.where(category_id: params[:id])
    end
    def new
      @author = Author.new
      @book = Book.new
    end
    def create
      @book = Book.new
      @author = Author.new(author_params)
      if @author.save
        redirect_to @author
      else
        render :new
      end
    end
    def createbook
      @book = Book.new
      @author = Author.new(author_params)
      if @author.save
        redirect_to @author
      else
        render :new
      end
    end
    private
    def author_params
      params.require(:author).permit(:name)
    end
end
  