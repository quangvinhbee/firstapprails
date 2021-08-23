class ApplicationController < ActionController::Base
    include ApplicationHelper
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!, only:[:count_cards]
    before_action :count_cards
    protect_from_forgery with: :null_session
    protected

    def count_cards
      @cards_size = current_order.order_items
      @cards = current_order
    end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
