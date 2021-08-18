class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: [:show,:index]
    def index
      @categories = Category.all
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
  