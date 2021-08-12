class AddFullnameToPeers < ActiveRecord::Migration[6.1]
  def change
    add_column :peers, :not, :string
    add_column :peers, :false, :string
  end
end
