class Transactions < ActiveRecord::Migration[5.0]
  def change

    create_table :transactions do |t|
      t.integer   :item_id, null: false
      t.string    :transfortation_type, null:false
      t.integer   :days, null:false
      t.integer     :staus, null:false

      t.timestamps
    end
  end
end
