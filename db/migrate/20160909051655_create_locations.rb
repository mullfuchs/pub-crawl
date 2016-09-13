class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :latitude
      t.string :longitude
      t.string :arrivetime
      t.string :departtime
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
