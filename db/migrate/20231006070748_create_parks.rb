class CreateParks < ActiveRecord::Migration[7.0]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :city
      t.string :totalsites
      t.string :firstcome
      t.string :reservable
      t.string :fees
      t.string :showers
      t.string :toilets
      t.string :phone
      t.string :url
      t.string :description

      t.timestamps
    end
  end
end
