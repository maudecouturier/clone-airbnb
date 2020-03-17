class ModifyTableFlat < ActiveRecord::Migration[6.0]
  def change
    remove_column :flats, :owner_id
    add_column :flats, :user_id, :integer
  end
end
