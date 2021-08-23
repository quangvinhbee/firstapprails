class AddCategoryIdToArticles < ActiveRecord::Migration[6.1]
  def change
    add_reference :articles, :category_id, :integer, foreign_key: true
  end
end
