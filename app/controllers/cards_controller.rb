class CardsController < ApplicationController
  before_action :authenticate_user!, except: [:show,:index]
    def show
      @order_items = current_order.order_items
    end
  end   