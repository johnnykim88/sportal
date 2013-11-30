class RemoveRatingFromSport < ActiveRecord::Migration
  def change
  	remove_column :sports, :rating
  end

  
end
