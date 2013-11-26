class AddColumnSports < ActiveRecord::Migration
  def up
  
  	add_column :sports, :rating, :string
  end

  def down
  	remove_column :sports, :rating
  end
end
