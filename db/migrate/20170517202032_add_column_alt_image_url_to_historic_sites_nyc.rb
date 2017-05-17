class AddColumnAltImageUrlToHistoricSitesNyc < ActiveRecord::Migration[5.0]
  def change
  	add_column :historic_sites_nycs, :alt_image_url, :string
  end
end
