class CardsController < ApplicationController
  before_action :authenticate_user!, except: [:show,:index]
    def show
      @order_items = current_order.order_items
    end
    def createoder
      params = ActionController::Parameters.new
      puts params[0].to_json
    end
    def submit
      params = ActionController::Parameters.new
      puts params[0].to_json
      redirect_to root_path
      # @order = current_order
      # @user = current_user
      # if @order
      #   OrderMailer.with(order: @order, user: @user).new_order_email.deliver
        
      #   flash[:success] = "Thank you for your order! We'll get contact you soon!"
      #   # @order_temp = current_order
      #   # @order_item = @order_temp.order_items.find(params[session[:order_id]])
      #   # @order_item.destroy
      #   # @order_items = current_order.order_items
      #   redirect_to root_path
      # else
      #   flash.now[:error] = "Your order form had some errors. Please check the form and resubmit."
      #   render :new
      # end
    end
  end   