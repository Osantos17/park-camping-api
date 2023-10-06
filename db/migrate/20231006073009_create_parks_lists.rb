class CreateParksLists < ActiveRecord::Migration[7.0]
  def change
    create_table :parks_lists do |t|
      t.references :park, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
