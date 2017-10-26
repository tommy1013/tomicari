class AddNicknameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nickname,          :string, null: false, unique: true
    add_column :users, :family_name,       :string, null: false
    add_column :users, :name,              :string, null: false
    add_column :users, :family_name_kana,  :string, null: false
    add_column :users, :name_kana,         :string, null: false
    add_column :users, :postal_code,       :integer, null: false
    add_column :users, :prefecture,        :string, null: false
    add_column :users, :city,              :string, null: false
    add_column :users, :town,              :string, null: false
    add_column :users, :building_name,     :string
    add_column :users, :phone_number,      :integer
    add_column :users, :card_number,       :integer, null: false
    add_column :users, :expiration_number, :integer
    add_column :users, :security_code,     :integer, null: false
    add_column :users, :clear,             :integer
  end
end

