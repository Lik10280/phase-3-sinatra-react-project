class RemoveUserAndApartmentFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :user_id
    remove_column :bookings, :apartment_id
  end
end
