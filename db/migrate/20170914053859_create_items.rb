class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string    :name, null:false
      t.text      :body
      t.integer   :price
      t.integer   :user_id

      t.timestamps
    end
  end
end
