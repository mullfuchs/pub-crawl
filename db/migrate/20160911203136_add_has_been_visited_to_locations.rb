class AddHasBeenVisitedToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :has_been_visited, :string
  end
end
