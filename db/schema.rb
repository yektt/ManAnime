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

ActiveRecord::Schema.define(version: 20210204145358) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.text "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_url"
  end

  create_table "contents", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "tags"
    t.string "link_to_watch"
    t.text "description"
    t.string "image"
    t.integer "volume_or_season_number"
    t.integer "episode_or_chapter_number"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "role"
    t.string "name"
    t.boolean "is_blocked"
    t.string "avatar"
  end

end
