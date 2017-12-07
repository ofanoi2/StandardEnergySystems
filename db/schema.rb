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

ActiveRecord::Schema.define(version: 20171207154231) do

  create_table "buildings", force: :cascade do |t|
    t.string "building_number"
    t.string "building_name"
    t.string "building_address"
    t.boolean "complete", default: false
    t.integer "building_start_order"
    t.boolean "jajo", default: false
    t.boolean "fman", default: false
    t.boolean "mjsd", default: false
    t.boolean "active_yn", default: true
    t.integer "workday_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workday_id"], name: "index_buildings_on_workday_id"
  end

  create_table "meters", force: :cascade do |t|
    t.string "meter_number"
    t.string "meter_type"
    t.integer "sequence_number"
    t.integer "previous_read"
    t.integer "current_read"
    t.integer "units"
    t.decimal "previous_read_demand"
    t.decimal "current_read_demand"
    t.datetime "previous_read_date"
    t.datetime "current_read_date"
    t.integer "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "demand_yn", default: false
    t.decimal "demand_units"
    t.string "meter_location"
    t.boolean "active_yn", default: true
    t.index ["building_id"], name: "index_meters_on_building_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.text "note"
    t.integer "workday_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workday_id"], name: "index_notes_on_workday_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "user_role", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "workdays", force: :cascade do |t|
    t.string "title"
    t.string "workday_type"
    t.boolean "complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
