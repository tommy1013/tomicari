class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string    :name, null:false
      t.text      :body
      t.integer   :price, null:false
      t.integer   :user_id
      t.integer   :evaluate_price
      t.integer   :buy
      t.string    :category
      t.string    :state

      t.timestamps
    end
  end
end
