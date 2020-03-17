class UpdateFlatTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :flats, :user_id
  end
end
