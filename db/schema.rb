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

ActiveRecord::Schema.define(version: 20160702142940) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_authors_on_name", using: :btree
  end

  create_table "commits", force: :cascade do |t|
    t.string   "sha"
    t.string   "event_id"
    t.string   "author"
    t.string   "author_location"
    t.datetime "commit_time"
    t.boolean  "resolving_location", default: false
    t.boolean  "resolved",           default: false
    t.string   "longitude"
    t.string   "latitude"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["event_id"], name: "index_commits_on_event_id", using: :btree
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "longitude"
    t.string   "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_locations_on_name", using: :btree
  end

end
