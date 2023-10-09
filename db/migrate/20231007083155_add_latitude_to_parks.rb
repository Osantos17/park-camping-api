class AddLatitudeToParks < ActiveRecord::Migration[7.0]
  def change
    add_column :parks, :latitude, :float
  end
end
