class AddPlacesColumnsToMeeting < ActiveRecord::Migration
  def change
 	add_column :meetings, :city, :string
 	add_column :meetings, :location_name, :string
 	add_column :meetings, :postalcode, :string
 	add_column :meetings, :phone_number, :string
 	add_column :meetings, :district, :string
 	add_column :meetings, :country, :string
 	add_column :meetings, :lat, :decimal
 	add_column :meetings, :lng, :decimal
  end
end
