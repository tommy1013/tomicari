class AddItemRefToItemImage < ActiveRecord::Migration[5.0]
  def change
    add_column :item_images, :prototype, :string
    add_column :item_images, :references, :string
  end
end
