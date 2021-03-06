class OrderItemsController < ApplicationController




    def create
        @order = current_order
        @order_item = @order.order_items.new(order_params)
        @order.save
        session[:order_id] = @order.id
        # redirect_back(fallback_location: root_path)
    end



    def update
        @order = current_order
        @order_item = @order.order_items.find(params[:id])
        @order_item.update_attributes(order_params)
        @order_items = current_order.order_items
    end

    def destroy
        @order = current_order
        @order_item = @order.order_items.find(params[:id])
        @order_item.destroy
        @order_items = current_order.order_items
        redirect_to cards_path
    end





    private

    def order_params
        params.require(:order_item).permit(:book_id)
    end
end