class Users < ActiveRecord::Migration[5.0]
  def change

    create_table :users do |t|
      t.string   :name, null: false, unique: true
      t.integer  :phone_number, null: false
      t.string   :email, null: false, unique: true
      t.string   :address, null: false
      t.text     :introduce
      t.text     :todo

      t.timestamps
    end
  end
end
