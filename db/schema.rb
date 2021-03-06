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

ActiveRecord::Schema.define(version: 20150613155635) do

  create_table "api_v1_comments", force: :cascade do |t|
    t.string   "user"
    t.integer  "site_id"
    t.string   "type"
    t.string   "memo"
    t.string   "alternatives"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "api_v1_comments", ["site_id"], name: "index_api_v1_comments_on_site_id"

  create_table "api_v1_sites", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hosts", force: :cascade do |t|
    t.string "url", null: false
  end

  create_table "issues", force: :cascade do |t|
    t.integer  "user_id",   null: false
    t.integer  "path_id"
    t.datetime "timestamp"
    t.text     "message"
  end

  add_index "issues", ["path_id"], name: "index_issues_on_path_id"

  create_table "paths", force: :cascade do |t|
    t.integer "host_id"
    t.string  "path",    null: false
  end

  add_index "paths", ["host_id"], name: "index_paths_on_host_id"

end
