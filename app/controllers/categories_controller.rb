class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: [:show,:index]
    def index
      @categories = Category.all
      @books = Book.all.joins(:category).select("categories.* ,Count(books.id) AS books_count").group("categories.id")

      
      # @categories do |category|
      #   count = 0
      #   if category.id == category.categories_id
      #     count = count+1
      #   end
      #   category.count = count
      # end
    end
    def show
      @category = Category.find(params[:id])
      @books = Book.where(category_id: params[:id])
    end
    def new
      @category = Category.new
      @id = params
    end
    def create
        @category = Category.new(category_params)
        if @category.save
          redirect_to @category
        else
          render :new
        end
    end
    private
    def category_params
      params.require(:category).permit(:name)
    end
end
  