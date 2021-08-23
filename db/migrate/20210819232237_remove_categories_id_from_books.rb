class RemoveCategoriesIdFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :categories_id, :integer
  end
end
