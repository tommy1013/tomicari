class CreateTrades < ActiveRecord::Migration[5.0]
  def change
    create_table :trades do |t|
      t.integer   :item_id, null: false
      t.string    :trade_type, null:false
      t.integer   :days, null:false
      t.string    :fee_type
      t.string    :area

      t.timestamps
    end
  end
end
