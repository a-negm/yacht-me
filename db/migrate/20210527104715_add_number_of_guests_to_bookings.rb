class AddNumberOfGuestsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :number_of_guests, :integer
  end
end
