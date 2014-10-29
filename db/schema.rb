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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141029151719) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "organizers", force: true do |t|
    t.string   "name"
    t.string   "contact_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fk_org_code"
  end

  create_table "organizers_points", force: true do |t|
    t.integer  "organizer_id"
    t.integer  "point_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "organizers_points", ["organizer_id", "point_id"], name: "index_organizers_points_on_organizer_id_and_point_id", unique: true, using: :btree

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "mobile"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "birthday"
  end

  create_table "points", force: true do |t|
    t.string   "number"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lat"
    t.string   "long"
    t.string   "definition"
  end

  create_table "races", force: true do |t|
    t.integer  "period"
    t.datetime "start_from"
    t.datetime "start_to"
    t.integer  "regattum_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regatta", force: true do |t|
    t.string   "name"
    t.integer  "organizer_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
