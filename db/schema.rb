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

ActiveRecord::Schema.define(version: 20160714220707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "athletes", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "photo_url"
    t.string   "position"
    t.string   "american_team_url"
    t.string   "overseas_team"
    t.string   "college"
    t.date     "birthdate"
    t.string   "height"
    t.string   "weight"
    t.string   "website_url"
    t.string   "video_url"
    t.integer  "sport_id"
    t.string   "american_team_name"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "athletes", ["sport_id"], name: "index_athletes_on_sport_id", using: :btree

  create_table "featured_photos", force: :cascade do |t|
    t.integer  "athlete_id"
    t.integer  "sport_id"
    t.string   "image_url",                     null: false
    t.boolean  "display_status", default: true
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "featured_photos", ["athlete_id"], name: "index_featured_photos_on_athlete_id", using: :btree
  add_index "featured_photos", ["sport_id"], name: "index_featured_photos_on_sport_id", using: :btree

  create_table "news_articles", force: :cascade do |t|
    t.integer  "athlete_id"
    t.integer  "sport_id"
    t.string   "headline",    null: false
    t.date     "date_posted"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "news_articles", ["athlete_id"], name: "index_news_articles_on_athlete_id", using: :btree
  add_index "news_articles", ["sport_id"], name: "index_news_articles_on_sport_id", using: :btree

  create_table "sports", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "type_id"
  end

  add_index "sports", ["type_id"], name: "index_sports_on_type_id", using: :btree

  create_table "team_members", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "position"
    t.string   "photo_url"
    t.string   "email"
    t.string   "twitter_url"
    t.string   "facebook_url"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.text     "quote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "photo_url"
  end

end
