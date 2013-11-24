class CreateUserMeetings < ActiveRecord::Migration
  def change
    create_table :user_meetings do |t|
      t.references :user
      t.references :meeting

      t.timestamps
    end
    add_index :user_meetings, :user_id
    add_index :user_meetings, :meeting_id
  end
end
