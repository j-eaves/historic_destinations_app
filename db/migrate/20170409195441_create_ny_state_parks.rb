class CreateNyStateParks < ActiveRecord::Migration[5.0]
  def change
    create_table :ny_state_parks do |t|
      t.string :name
      t.string :category
      t.string :county
      t.string :url
      t.float :latitude
      t.float :longitude
      t.integer :region_number

      t.timestamps
    end
  end
end
