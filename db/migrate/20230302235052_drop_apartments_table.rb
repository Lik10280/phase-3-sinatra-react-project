class DropApartmentsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :apartments
  end

  def down
    create_table :apartments do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :location
      t.integer :owner_id

      t.timestamps
    end
  end
end
