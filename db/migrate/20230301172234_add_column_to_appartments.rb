class AddColumnToAppartments < ActiveRecord::Migration[6.1]
  def change
    add_column :apartments, :is_booked, :boolean, default: false
  end
end
