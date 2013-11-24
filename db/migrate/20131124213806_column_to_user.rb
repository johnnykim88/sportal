class ColumnToUser < ActiveRecord::Migration
  def up
  	add_column :users, :zip, :string
  	add_column :users, :photo, :string
  	add_column :users, :latitude, :float
  	add_column :users, :longitude, :float
  end

  def down
  	remove_column :users, :zip
  	remove_column :users, :photo
  	remove_column :users, :latitude
  	remove_column :users, :longitude
  end
end
