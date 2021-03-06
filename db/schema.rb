# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_09_093758) do

  create_table "administrators", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "remember_token"
    t.datetime "remember_token_expires_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "start_year", default: 0
    t.integer "end_year", default: 0
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "profile_id"
    t.index ["profile_id"], name: "index_educations_on_profile_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "status", default: 0
    t.string "args"
    t.integer "job_type", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.date "bod"
    t.string "phone"
    t.string "email"
    t.string "addr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "about"
    t.string "username"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "bg_color"
    t.string "percent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "profile_id"
    t.index ["profile_id"], name: "index_skills_on_profile_id"
  end

  create_table "slides", force: :cascade do |t|
    t.string "link_img"
    t.integer "width", default: 0
    t.integer "height", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "profile_id"
    t.index ["profile_id"], name: "index_slides_on_profile_id"
  end

  create_table "socials", force: :cascade do |t|
    t.string "title"
    t.string "href"
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "profile_id"
    t.index ["profile_id"], name: "index_socials_on_profile_id"
  end

  add_foreign_key "educations", "profiles"
  add_foreign_key "skills", "profiles"
  add_foreign_key "slides", "profiles"
  add_foreign_key "socials", "profiles"
end
