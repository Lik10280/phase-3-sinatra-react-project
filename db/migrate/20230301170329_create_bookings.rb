class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.belongs_to :user, index: true
      t.belongs_to :apartment, index: true
      t.date :start_date
      t.date :end_date
      t.string :payment_status
      t.timestamps
    end
  end
end
