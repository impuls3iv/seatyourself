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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160627201707) do
=======
ActiveRecord::Schema.define(version: 20160627182112) do
>>>>>>> 97787ebca04b04747b8bfa1c674f5662ae737a5c

  create_table "reservations", force: :cascade do |t|
    t.datetime "time"
    t.integer  "people"
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.boolean  "availability"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "hour"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.integer  "price"
    t.integer  "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "open_hour"
    t.integer  "close_hour"
    t.string   "address"
    t.string   "city"
    t.integer  "user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string   "category"
    t.integer  "min_price"
    t.integer  "max_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "people"
    t.string   "location"
    t.date     "time"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "username"
    t.string   "phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
