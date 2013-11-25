class AddColumnUserSport < ActiveRecord::Migration
  def up
  	add_column :user_sports, :rating, :string
  end

  def down
  	remove_column :user_sports, :rating
  end
end
