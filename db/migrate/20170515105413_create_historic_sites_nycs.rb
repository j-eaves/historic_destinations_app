class CreateHistoricSitesNycs < ActiveRecord::Migration[5.0]
  def change
    create_table :historic_sites_nycs do |t|
      t.string :name
      t.string :location
      t.string :park_name
      t.string :phone
      t.string :description
      t.string :accessible
      t.string :historic_house_trust_website
      t.string :house_website
      t.string :property_id

      t.timestamps
    end
  end
end
