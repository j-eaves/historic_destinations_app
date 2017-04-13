class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :category
      t.string :county
      t.string :facility_url
      t.string :name
      t.string :region
      t.string :x
      t.string :y

      t.timestamps
    end
  end
end
