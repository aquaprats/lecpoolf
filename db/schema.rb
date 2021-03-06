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

ActiveRecord::Schema.define(:version => 20120115004739) do

  create_table "attachments", :force => true do |t|
    t.string   "filename"
    t.string   "content_type"
    t.binary   "data"
    t.integer  "user_id"
    t.string   "course"
    t.string   "category"
    t.integer  "vcount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attachments", ["user_id"], :name => "index_attachments_on_user_id"

  create_table "books", :force => true do |t|
    t.integer  "user_id"
    t.string   "bname"
    t.string   "author"
    t.string   "edition"
    t.string   "cn"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.integer  "buy",        :default => 0
    t.integer  "sell",       :default => 0
    t.integer  "lend",       :default => 0
    t.integer  "borrow",     :default => 0
    t.integer  "bid"
  end

  add_index "books", ["user_id"], :name => "index_books_on_user_id"

  create_table "comments", :force => true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "conversation_id"
  end

  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "conversations", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "forum_id"
  end

  add_index "conversations", ["user_id"], :name => "index_conversations_on_user_id"

  create_table "favourites", :force => true do |t|
    t.integer  "attachment_id"
    t.integer  "user_id"
    t.integer  "video_id"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favourites", ["attachment_id"], :name => "index_favourites_on_attachment_id"
  add_index "favourites", ["user_id"], :name => "index_favourites_on_user_id"
  add_index "favourites", ["video_id"], :name => "index_favourites_on_video_id"

  create_table "forums", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "forums", ["user_id"], :name => "index_forums_on_user_id"

  create_table "messages", :force => true do |t|
    t.string   "subject"
    t.string   "email"
    t.text     "body"
    t.string   "category"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["user_id"], :name => "index_messages_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "college"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "rollno"
    t.string   "department"
    t.string   "cn1"
    t.string   "cn2"
    t.string   "cn3"
    t.string   "cn4"
    t.string   "cn5"
    t.string   "cn6"
    t.string   "cn7"
    t.string   "image"
    t.boolean  "admin",              :default => false
    t.boolean  "activated"
    t.string   "address"
    t.integer  "contact"
    t.integer  "credit",             :default => 1
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.string   "video_code"
    t.integer  "user_id"
    t.string   "course"
    t.integer  "vcount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", :force => true do |t|
    t.boolean  "vote",          :default => false
    t.integer  "voteable_id",                      :null => false
    t.string   "voteable_type",                    :null => false
    t.integer  "voter_id"
    t.string   "voter_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["voteable_id", "voteable_type"], :name => "index_votes_on_voteable_id_and_voteable_type"
  add_index "votes", ["voter_id", "voter_type", "voteable_id", "voteable_type"], :name => "fk_one_vote_per_user_per_entity", :unique => true
  add_index "votes", ["voter_id", "voter_type"], :name => "index_votes_on_voter_id_and_voter_type"

end
