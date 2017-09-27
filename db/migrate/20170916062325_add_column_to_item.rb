class AddColumnToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :evaluate_price, :integer
  end
end
