class RemoveSearchFromMeeting < ActiveRecord::Migration
  def up
  remove_column :meetings, :meeting_search
  end

  def down
  add_column :meetings, :meeting_search, :string
  end
end
