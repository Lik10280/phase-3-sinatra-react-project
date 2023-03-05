class AddBookingsToRentals < ActiveRecord::Migration[6.1]
  def change
  
    add_column :rentals, :bookings, :integer, default: 0
  end
end
