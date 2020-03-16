class ModifyTravelerForFlats < ActiveRecord::Migration[6.0]
  def change
    remove_column :flats, :travelers
    add_column :flats, :traveler, :integer
  end
end
