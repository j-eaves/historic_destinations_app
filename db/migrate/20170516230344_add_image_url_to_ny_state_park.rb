class AddImageUrlToNyStatePark < ActiveRecord::Migration[5.0]
  def change
  	add_column :ny_state_parks, :image_url, :string
  end
end
