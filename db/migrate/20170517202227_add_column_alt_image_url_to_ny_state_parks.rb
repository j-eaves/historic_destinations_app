class AddColumnAltImageUrlToNyStateParks < ActiveRecord::Migration[5.0]
  def change
	  add_column :ny_state_parks, :alt_image_url, :string
  end
end