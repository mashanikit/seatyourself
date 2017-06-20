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

ActiveRecord::Schema.define(version: 20170620183641) do

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.integer  "size"
    t.date     "date"
    t.integer  "time"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "neighbourhood"
    t.string   "address"
    t.string   "cuisine_type"
    t.datetime "created_at",                                                                                                                 null: false
    t.datetime "updated_at",                                                                                                                 null: false
    t.time     "opens"
    t.time     "closes"
    t.integer  "capacity"
    t.string   "image",         default: "http://static.boredpanda.com/blog/wp-content/uuuploads/cute-baby-animals/cute-baby-animals-2.jpg"
    t.integer  "owner_id"
    t.string   "price_range"
    t.text     "description"
    t.string   "menu"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "password_digest"
    t.integer  "loyalty_points",  default: 0
    t.string   "role",            default: "customer", null: false
  end

end
