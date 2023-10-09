class AddLongitudeToParks < ActiveRecord::Migration[7.0]
  def change
    add_column :parks, :longitude, :float
  end
end
