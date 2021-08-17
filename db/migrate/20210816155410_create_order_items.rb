class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :book_id
      t.integer :total
      t.integer :order_id

      t.timestamps
    end
  end
end
