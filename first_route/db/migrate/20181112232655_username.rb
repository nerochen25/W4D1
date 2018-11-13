class Username < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :email
    remove_column :users, :favorite_taco_meat
    
    add_index :users, :username, :unique => true
  end
end
