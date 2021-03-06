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

ActiveRecord::Schema.define(version: 20151019213341) do

  create_table "comments", force: :cascade do |t|
    t.text     "title"
    t.text     "body"
    t.integer  "author_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["author_id"], name: "index_comments_on_author_id"
  add_index "comments", ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"

  create_table "contact_groupings", force: :cascade do |t|
    t.integer "group_id"
    t.integer "contact_id"
  end

  create_table "contact_shares", force: :cascade do |t|
    t.integer "contact_id"
    t.integer "user_id"
    t.boolean "favorited",  default: false
  end

  add_index "contact_shares", ["contact_id"], name: "index_contact_shares_on_contact_id"
  add_index "contact_shares", ["user_id"], name: "index_contact_shares_on_user_id"

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "#<ActiveRecord::ConnectionAdapters::TableDefinition:0x007f99ce63f938>"
    t.boolean  "favorited",                                                             default: false
  end

  add_index "contacts", ["user_id"], name: "index_contacts_on_user_id"

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

end
