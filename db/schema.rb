# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131205211939) do

  create_table "locations", :force => true do |t|
    t.string   "address"
    t.string   "location_name"
    t.string   "phone_number"
    t.string   "district"
    t.string   "city"
    t.string   "postcode"
    t.string   "country"
    t.decimal  "lat"
    t.decimal  "lng"
    t.integer  "meeting_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "state"
  end

  add_index "locations", ["meeting_id"], :name => "index_locations_on_meeting_id"

  create_table "meetings", :force => true do |t|
    t.date     "meetdate"
    t.boolean  "recurring"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.time     "start_at"
    t.time     "end_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "sport_id"
  end

  create_table "messages", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sports", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "user_meetings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "meeting_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_meetings", ["meeting_id"], :name => "index_user_meetings_on_meeting_id"
  add_index "user_meetings", ["user_id"], :name => "index_user_meetings_on_user_id"

  create_table "user_sports", :force => true do |t|
    t.integer  "user_id"
    t.integer  "sport_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "rating"
  end

  add_index "user_sports", ["sport_id"], :name => "index_user_sports_on_sport_id"
  add_index "user_sports", ["user_id"], :name => "index_user_sports_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "zip"
    t.string   "photo"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
