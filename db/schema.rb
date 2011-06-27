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

ActiveRecord::Schema.define(:version => 20110610085117) do

  create_table "cards", :force => true do |t|
    t.integer  "wall_id",                       :null => false
    t.integer  "x"
    t.integer  "y"
    t.integer  "z"
    t.integer  "w",                             :null => false
    t.integer  "h",                             :null => false
    t.string   "text"
    t.string   "bg_image"
    t.string   "bg_color"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "shadow",     :default => false, :null => false
  end

  add_index "cards", ["wall_id"], :name => "cards_wall_id_fk"

  create_table "prototypes", :force => true do |t|
    t.string   "name"
    t.integer  "wall_id",                       :null => false
    t.integer  "w",                             :null => false
    t.integer  "h",                             :null => false
    t.string   "text"
    t.string   "bg_image"
    t.string   "bg_color"
    t.string   "author"
    t.boolean  "shadow",     :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prototypes", ["wall_id"], :name => "prototypes_wall_id_fk"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "walls", :force => true do |t|
    t.string   "uuid",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "cards", "walls", :name => "cards_wall_id_fk", :dependent => :delete

  add_foreign_key "prototypes", "walls", :name => "prototypes_wall_id_fk", :dependent => :delete

end
