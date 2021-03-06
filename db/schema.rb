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

ActiveRecord::Schema.define(version: 20160627200909) do

  create_table "assets", force: :cascade do |t|
    t.string  "IP"
    t.integer "site_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
  end

  create_table "contacts", force: :cascade do |t|
    t.string  "name"
    t.string  "number"
    t.integer "site_id"
  end

  create_table "sites", force: :cascade do |t|
    t.text    "address"
    t.integer "company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string  "username"
    t.string  "email"
    t.string  "password_digest"
    t.integer "company_id"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id"

end
