class AddPeersRefToArticles < ActiveRecord::Migration[6.1]
  def change
    add_reference :articles, :article, null: false, foreign_key: true
  end
end
