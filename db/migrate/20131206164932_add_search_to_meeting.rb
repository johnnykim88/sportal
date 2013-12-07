class AddSearchToMeeting < ActiveRecord::Migration
  def change
  	add_column :meetings, :meeting_search, :string

  end
end
