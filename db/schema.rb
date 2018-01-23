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

ActiveRecord::Schema.define(version: 20180123071643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "decisions", force: :cascade do |t|
    t.integer "decision_maker_id"
    t.integer "decision_receiver_id"
    t.boolean "approved", default: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["decision_maker_id"], name: "index_decisions_on_decision_maker_id"
    t.index ["decision_receiver_id"], name: "index_decisions_on_decision_receiver_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "distance", default: 2
    t.string "sexual_preference"
    t.integer "min_age", default: 18
    t.integer "max_age", default: 25
    t.boolean "discovery", default: true
    t.string "gender"
    t.string "work"
    t.string "school"
    t.text "about"
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "sex"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

end
