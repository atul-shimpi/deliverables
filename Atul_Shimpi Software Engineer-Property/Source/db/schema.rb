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

ActiveRecord::Schema.define(version: 20150503054650) do

  create_table "addresses", force: :cascade do |t|
    t.string   "address1",    limit: 50
    t.string   "address2",    limit: 50
    t.string   "city",        limit: 30
    t.integer  "pincode",     limit: 4
    t.string   "country",     limit: 30
    t.float    "latitude",    limit: 24
    t.float    "longitude",   limit: 24
    t.integer  "property_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 30, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "properties", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.integer  "property_type_id", limit: 4
    t.integer  "purchase_type_id", limit: 4
    t.integer  "area",             limit: 4, null: false
    t.integer  "price",            limit: 4, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "property_types", force: :cascade do |t|
    t.string   "name",       limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "purchase_types", force: :cascade do |t|
    t.string   "name",       limit: 20, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "roles", force: :cascade do |t|
    t.integer  "role_type",   limit: 4,  null: false
    t.string   "name",        limit: 30, null: false
    t.string   "description", limit: 50, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",               limit: 30,  null: false
    t.string   "email_id",           limit: 25,  null: false
    t.string   "encrypted_password", limit: 100, null: false
    t.string   "salt",               limit: 100, null: false
    t.integer  "role_id",            limit: 4,   null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

end
