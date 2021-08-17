class OrderItem < ApplicationRecord
    belongs_to :order 
    belongs_to :book

    def unit_price
        if persisted?
            self[:unit_price]
        else 
            book.price 
        end
    end

    def total
        unit_price
    end

    private 
    def set_unit_price
        self[:unit_price] = unit_price
    end

    def set_total
        self[:total] = total * 1
    end
end
