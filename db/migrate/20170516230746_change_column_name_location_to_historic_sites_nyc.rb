class ChangeColumnNameLocationToHistoricSitesNyc < ActiveRecord::Migration[5.0]
  def change
  	rename_column :historic_sites_nycs, :location, :address
  end
end
