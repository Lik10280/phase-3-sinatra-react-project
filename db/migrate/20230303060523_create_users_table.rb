class CreateUsersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
