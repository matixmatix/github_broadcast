class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :name, index: true
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
