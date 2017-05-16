class ChangeColumnNameHouseWebsiteToHistoricSitesNyc < ActiveRecord::Migration[5.0]
  def change
  	rename_column :historic_sites_nycs, :house_website, :url
  end
end
