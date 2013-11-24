class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.date :meetdate
      t.boolean :recurring
      t.string :address
      t.float :latitude
      t.float :longitude
      t.time :start_at
      t.time :end_at

      t.timestamps
    end
  end
end
