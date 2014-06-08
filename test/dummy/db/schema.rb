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

ActiveRecord::Schema.define(version: 20140607224032) do

  create_table "classifieds_ad_regions", force: true do |t|
    t.integer  "ad_id"
    t.integer  "city_id"
    t.integer  "region_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "classifieds_ad_regions", ["ad_id"], name: "index_classifieds_ad_regions_on_ad_id", using: :btree
  add_index "classifieds_ad_regions", ["city_id"], name: "index_classifieds_ad_regions_on_city_id", using: :btree
  add_index "classifieds_ad_regions", ["country_id"], name: "index_classifieds_ad_regions_on_country_id", using: :btree

  create_table "classifieds_ads", force: true do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "title"
    t.string   "slug"
    t.text     "type"
    t.decimal  "price",       precision: 8, scale: 2, default: 0.0
    t.text     "short_desc"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classifieds_categories", force: true do |t|
    t.integer  "section_id"
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classifieds_cities", force: true do |t|
    t.integer  "country_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classifieds_countries", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classifieds_sections", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
