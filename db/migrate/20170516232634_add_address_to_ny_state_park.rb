class AddAddressToNyStatePark < ActiveRecord::Migration[5.0]
  def change
  	add_column :ny_state_parks, :address, :string
  end
end
