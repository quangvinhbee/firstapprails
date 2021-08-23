class OrderMailer < ApplicationMailer

    def new_order_email
     
        @order = params[:order]
        puts @order.to_json
        @user = params[:user]
    
        mail(to: "lamquangvinh44@gmail.com", subject: "You got a new order!")
      end
end
