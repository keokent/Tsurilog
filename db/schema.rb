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

ActiveRecord::Schema.define(version: 20130803102343) do

  create_table "lures", force: true do |t|
    t.string   "name"
    t.string   "photo_url"
    t.integer  "lure_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", force: true do |t|
    t.integer  "user_id"
    t.integer  "lure_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["lure_id"], name: "index_relationships_on_lure_id"
  add_index "relationships", ["user_id", "lure_id"], name: "index_relationships_on_user_id_and_lure_id", unique: true
  add_index "relationships", ["user_id"], name: "index_relationships_on_user_id"

  create_table "reviews", force: true do |t|
    t.text     "content"
    t.integer  "lure_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["lure_id"], name: "index_reviews_on_lure_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
