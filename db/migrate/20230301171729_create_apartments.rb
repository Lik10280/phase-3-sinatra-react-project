class CreateApartments < ActiveRecord::Migration[6.1]
  def change
    create_table :apartments do |t|
      t.string :apartment_name
      t.string :image
      t.string :location
      t.integer :price
      t.integer :bedrooms
      t.integer :monthly_rent
      t.timestamps
    end
  end
end
