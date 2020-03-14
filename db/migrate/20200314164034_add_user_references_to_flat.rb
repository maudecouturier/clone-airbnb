class AddUserReferencesToFlat < ActiveRecord::Migration[6.0]
  def change
    add_reference :flats, :owner, index: true, foreign_key: { to_table: :users}
    add_reference :flats, :renter, index: true, foreign_key: { to_table: :users}
  end
end
