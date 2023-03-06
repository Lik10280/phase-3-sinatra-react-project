class AddUser < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :user_id, :integer
    add_foreign_key :rentals, :users

  end
end
