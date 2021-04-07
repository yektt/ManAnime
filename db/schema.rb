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

ActiveRecord::Schema.define(version: 20210325104257) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.text "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_url"
  end

  create_table "characters_contents", id: false, force: :cascade do |t|
    t.integer "content_id", null: false
    t.integer "character_id", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "comment_body"
    t.integer "upvote_number"
    t.integer "downvote_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "content_id"
  end

  create_table "comments_users", id: false, force: :cascade do |t|
    t.integer "comment_id", null: false
    t.integer "user_id", null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "tags"
    t.text "description"
    t.string "image"
    t.integer "volume_or_season_number"
    t.integer "episode_or_chapter_number"
    t.string "link_to_watch_or_read"
    t.integer "rating_number"
    t.decimal "rating", precision: 2, scale: 1
  end

  create_table "contents_genres", id: false, force: :cascade do |t|
    t.integer "genre_id", null: false
    t.integer "content_id", null: false
  end

  create_table "contents_users", id: false, force: :cascade do |t|
    t.integer "content_id", null: false
    t.integer "user_id", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.string "reply_body"
    t.integer "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["comment_id"], name: "index_replies_on_comment_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "review_body"
    t.integer "rating"
    t.string "categories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "content_id"
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

  create_table "users_votes", id: false, force: :cascade do |t|
    t.integer "vote_id", null: false
    t.integer "user_id", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.string "vote_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "comment_id"
    t.integer "user_id"
  end

end
