class AddNumberOfTravelerToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :number_of_traveler, :integer
  end
end
