class ChangeDepartmentColumnToRental < ActiveRecord::Migration[6.1]
  def change
    rename_column :reviews, :apartment_id, :rental_id
  end
end
