class UpdateReferencesToFlat < ActiveRecord::Migration[6.0]
  def change
    add_reference :flats, :user, index: true, foreign_key: { to_table: :users}
  end
end
