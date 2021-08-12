class CreatePeers < ActiveRecord::Migration[6.1]
  def change
    create_table :peers do |t|
      t.string :title
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
