class AddImageUrlToHistoricSitesNyc < ActiveRecord::Migration[5.0]
  def change
  	add_column :historic_sites_nycs, :image_url, :string
  end
end
