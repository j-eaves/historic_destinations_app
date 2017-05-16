class AddCoordinatesToHistoricSitesNyc < ActiveRecord::Migration[5.0]
  def change
  	add_column :historic_sites_nycs, :latitude, :float
  	add_column :historic_sites_nycs, :longitude, :float
  end
end
