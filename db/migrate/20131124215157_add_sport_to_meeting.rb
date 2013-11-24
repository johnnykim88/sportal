class AddSportToMeeting < ActiveRecord::Migration
  def change
  
  	add_column :meetings, :sport_id, :integer
  end
end
