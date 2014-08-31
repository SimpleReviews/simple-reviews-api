class AddInstagramTagToProducts < ActiveRecord::Migration
  def change
    add_column :products, :instagram_tag, :string
  end
end
