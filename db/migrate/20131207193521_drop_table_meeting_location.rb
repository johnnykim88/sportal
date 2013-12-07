class DropTableMeetingLocation < ActiveRecord::Migration
  def change
  drop_table :meeting_locations
  end

 
end
