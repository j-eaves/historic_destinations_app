class AddDescriptionToNyStatePark < ActiveRecord::Migration[5.0]
  def change
  	add_column :ny_state_parks, :description, :string
  end
end
