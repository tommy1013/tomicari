class Comments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer   :user_id, null: false
      t.integer   :item_id, null: false
      t.text      :body

      t.timestamps
    end
  end
end
