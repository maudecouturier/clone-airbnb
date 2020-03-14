class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :title
      t.text :description
      t.string :location
      t.integer :travelers

      t.timestamps
    end
  end
end
