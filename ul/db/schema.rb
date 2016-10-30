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

ActiveRecord::Schema.define(version: 20161030022829) do

  create_table "elements", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "stat_top",   limit: 4,   default: 0
    t.integer  "stat_bot",   limit: 4,   default: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "rarity_id",         limit: 4
    t.integer  "element_id",        limit: 4
    t.integer  "stat_element_id",   limit: 4
    t.integer  "cost",              limit: 4
    t.integer  "current_reforge",   limit: 4
    t.integer  "max_reforge",       limit: 4
    t.integer  "top_stat",          limit: 4
    t.integer  "bot_stat",          limit: 4
    t.string   "skill_name",        limit: 255
    t.text     "skill_description", limit: 65535
    t.string   "thumbnail",         limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "monsters", ["element_id"], name: "index_monsters_on_element_id", using: :btree
  add_index "monsters", ["rarity_id"], name: "index_monsters_on_rarity_id", using: :btree

  create_table "rarities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "max_level",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "targets", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "team",        limit: 4,     default: 0
    t.integer  "affected",    limit: 4,     default: 0
    t.text     "description", limit: 65535
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_foreign_key "monsters", "elements"
  add_foreign_key "monsters", "rarities"
end
