class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.string :location_name
      t.string :phone_number
      t.string :district
      t.string :city
      t.string :postcode
      t.string :country
      t.string :streetnumber
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
