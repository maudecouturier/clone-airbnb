class ModifUserReferencesToTables < ActiveRecord::Migration[6.0]
  def change
    remove_reference :flats, :renter, index: true, foreign_key: { to_table: :users}

    remove_reference :bookings, :user
    add_reference :bookings, :renter, index: true, foreign_key: { to_table: :users}

    remove_reference :reviews, :user
    add_reference :reviews, :renter, index: true, foreign_key: { to_table: :users}
  end
end
