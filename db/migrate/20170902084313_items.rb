class Items < ActiveRecord::Migration[5.0]
  def change

    create_table :items do |t|
      t.string    :name, null:false, unique: true
      t.string    :image, null:false
      t.text      :body
      t.integer   :price, null:false
      t.integer   :category_id, null:false

      t.timestamps
    end
  end
end
