class CreateMeetingLocations < ActiveRecord::Migration
  def change
    create_table :meeting_locations do |t|
      t.references :meeting
      t.references :location

      t.timestamps
    end
    add_index :meeting_locations, :meeting_id
    add_index :meeting_locations, :location_id
  end
end
