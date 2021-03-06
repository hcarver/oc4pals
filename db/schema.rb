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

ActiveRecord::Schema.define(version: 20190917153648) do

  create_table "four_clue_questions", force: :cascade do |t|
    t.integer  "oc_id"
    t.string   "type",        null: false
    t.integer  "position"
    t.boolean  "is_pictures", null: false
    t.string   "clue1",       null: false
    t.string   "clue2",       null: false
    t.string   "clue3",       null: false
    t.string   "clue4",       null: false
    t.string   "answer",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["oc_id"], name: "index_four_clue_questions_on_oc_id"
    t.index ["type"], name: "index_four_clue_questions_on_type"
  end

  create_table "missing_vowels_rounds", force: :cascade do |t|
    t.integer  "oc_id"
    t.string   "answer",     null: false
    t.integer  "position"
    t.string   "clue1",      null: false
    t.string   "clue2",      null: false
    t.string   "clue3",      null: false
    t.string   "clue4",      null: false
    t.string   "answer1",    null: false
    t.string   "answer2",    null: false
    t.string   "answer3",    null: false
    t.string   "answer4",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["oc_id"], name: "index_missing_vowels_rounds_on_oc_id"
  end

  create_table "ocs", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "owner_id",   null: false
    t.boolean  "public",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "round_three_puzzgrids", force: :cascade do |t|
    t.integer "oc_id"
    t.string  "grid_one", null: false
    t.string  "grid_two", null: false
    t.index ["oc_id"], name: "index_round_three_puzzgrids_on_oc_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                                       null: false
    t.integer  "sign_in_count",                   default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "authentication_token", limit: 30
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
