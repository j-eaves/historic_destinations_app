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

ActiveRecord::Schema.define(version: 20170517202227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "historic_sites_nycs", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "park_name"
    t.string   "phone"
    t.string   "description"
    t.string   "accessible"
    t.string   "historic_house_trust_website"
    t.string   "url"
    t.string   "property_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "image_url"
    t.string   "alt_image_url"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ny_state_parks", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.string   "county"
    t.string   "url"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "region_number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "description"
    t.string   "image_url"
    t.string   "address"
    t.string   "phone"
    t.string   "alt_image_url"
  end

  create_table "sites", force: :cascade do |t|
    t.string   "category"
    t.string   "county"
    t.string   "facility_url"
    t.string   "name"
    t.string   "region"
    t.string   "x"
    t.string   "y"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
