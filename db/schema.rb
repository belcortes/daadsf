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

ActiveRecord::Schema.define(version: 20150115220559) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "super"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "admin_users_users", force: true do |t|
    t.integer "admin_user_id"
    t.integer "user_id"
  end

  create_table "buildings", force: true do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "b_type"
    t.string   "phone_number"
    t.string   "notes"
    t.string   "city"
  end

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

  create_table "emails", force: true do |t|
    t.string   "text"
    t.string   "html"
    t.string   "to"
    t.string   "from"
    t.string   "subject"
    t.string   "attachments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.boolean  "email"
    t.boolean  "mms"
    t.integer  "width"
    t.integer  "height"
    t.decimal  "lat"
    t.decimal  "lng"
    t.datetime "date_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "neighborhoods", force: true do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "r_score"
  end

  create_table "resources", force: true do |t|
    t.decimal  "lat"
    t.decimal  "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "website"
    t.string   "resource_type"
    t.string   "facility_type"
    t.string   "services"
    t.integer  "zipcode_id"
    t.string   "blank"
  end

  create_table "tweets", force: true do |t|
    t.string   "text"
    t.string   "name"
    t.string   "location"
    t.float    "lat"
    t.float    "long"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
    t.string   "handle"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
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
    t.boolean  "firstaid"
    t.boolean  "dumptruck"
    t.boolean  "backhoe"
    t.boolean  "forklift"
    t.boolean  "fuel"
    t.boolean  "generator"
    t.boolean  "saw"
    t.boolean  "jackhammer"
    t.boolean  "emergency"
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
    t.boolean  "underground"
    t.boolean  "overnight"
    t.boolean  "oxygen"
    t.boolean  "wheelchair"
    t.boolean  "defibrillation"
    t.string   "other"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "firstresponder"
    t.boolean  "inspector"
    t.boolean  "commercial"
    t.boolean  "electrician"
    t.boolean  "carpenter"
    t.boolean  "operator"
    t.boolean  "plumber"
    t.boolean  "kitchen"
    t.boolean  "bulldozer"
    t.boolean  "excavator"
    t.boolean  "frontloader"
    t.boolean  "reclaimer"
    t.boolean  "trencher"
    t.boolean  "tractor"
    t.boolean  "goggles"
    t.boolean  "axe"
    t.string   "address2"
    t.integer  "backhoe_q"
    t.integer  "bulldozer_q"
    t.integer  "dumptruck_q"
    t.integer  "excavator_q"
    t.integer  "forklift_q"
    t.integer  "frontloader_q"
    t.integer  "jackhammer_q"
    t.integer  "reclaimer_q"
    t.integer  "tractor_q"
    t.integer  "trencher_q"
    t.integer  "axe_q"
    t.integer  "drill_q"
    t.integer  "fuel_q"
    t.integer  "goggles_q"
    t.integer  "hammer_q"
    t.integer  "shovel_q"
    t.integer  "defibrillation_q"
    t.integer  "emergency_q"
    t.integer  "oxygen_q"
    t.integer  "wheelchair_q"
    t.integer  "generator_q"
    t.integer  "kitchen_q"
    t.integer  "overnight_q"
    t.integer  "underground_q"
    t.boolean  "business"
    t.boolean  "ngo"
    t.boolean  "gov"
    t.boolean  "faith"
    t.boolean  "closed"
    t.boolean  "open"
    t.boolean  "rescue"
    t.boolean  "flashlight"
    t.integer  "flashlight_q"
    t.boolean  "individual"
    t.integer  "license_number"
    t.integer  "certification_number"
    t.integer  "duns_number"
    t.boolean  "volunteer"
    t.integer  "certification2_number"
    t.integer  "license2_number"
    t.boolean  "sandbag"
    t.integer  "sandbag_q"
    t.boolean  "display",                default: true
    t.boolean  "meals"
    t.boolean  "gather"
    t.boolean  "clothing"
    t.boolean  "spiritual"
    t.integer  "meal_q"
    t.integer  "clothing_q"
    t.boolean  "display2",               default: false
    t.boolean  "display3",               default: false
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
