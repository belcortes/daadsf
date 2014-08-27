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

ActiveRecord::Schema.define(version: 20140825184346) do

  create_table "cooling_centers", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
    t.string   "center_type"
    t.decimal  "latitude",      precision: 15, scale: 12
    t.decimal  "longitude",     precision: 15, scale: 12
    t.string   "accessibility"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "neighborhoods", force: true do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", force: true do |t|
    t.integer  "street_number"
    t.string   "street_name"
    t.string   "street_type"
    t.string   "station_type"
    t.decimal  "lat"
    t.decimal  "lng"
    t.integer  "zipcode_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "nert"
    t.boolean  "cert"
    t.string   "birth"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "admin"
    t.string   "uid"
    t.integer  "zip"
    t.string   "address"
    t.integer  "zipcode_id"
    t.boolean  "cpr"
    t.boolean  "safe"
    t.boolean  "first_aid"
    t.boolean  "dump_truck"
    t.boolean  "back_hoe"
    t.boolean  "fork_lift"
    t.boolean  "fuel"
    t.boolean  "power_generator"
    t.boolean  "saw"
    t.boolean  "jack_hammer"
    t.boolean  "emergency_kit"
    t.boolean  "drill"
    t.boolean  "hammer"
    t.boolean  "survival_kit"
    t.boolean  "shovel"
    t.string   "emergency_contact"
    t.string   "city"
    t.string   "state"
    t.boolean  "engineer"
    t.boolean  "contractor"
    t.boolean  "church"
    t.boolean  "school"
    t.boolean  "underground_shelter"
    t.boolean  "overnight_shelter"
    t.boolean  "oxygen"
    t.boolean  "wheel_chair"
    t.boolean  "defibrillation"
    t.string   "other"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "first_reponder"
    t.boolean  "inspector"
    t.boolean  "commercial"
    t.boolean  "electrician"
    t.boolean  "carpenter"
    t.boolean  "operator"
    t.boolean  "plumber"
    t.boolean  "kitchen"
    t.boolean  "bulldozer"
    t.boolean  "excavator"
    t.boolean  "front_loader"
    t.boolean  "reclaimer"
    t.boolean  "trencher"
    t.boolean  "tractor"
    t.boolean  "goggles"
    t.boolean  "axe"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "zipcodes", force: true do |t|
    t.string   "city"
    t.string   "state"
    t.string   "zip_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

end
