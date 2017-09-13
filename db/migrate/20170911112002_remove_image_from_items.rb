class RemoveImageFromItems < ActiveRecord::Migration[5.0]
  def up
    remove_column :items, :image, :string
  end

  def down
    add_column :items, :image, :string
  end
end
