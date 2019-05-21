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

ActiveRecord::Schema.define(version: 2019_05_21_080803) do

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.string "age"
    t.text "description"
    t.string "teacher"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "homepages", force: :cascade do |t|
    t.string "orgname"
    t.string "logo"
    t.text "content"
    t.string "picture"
    t.string "pictext"
    t.string "linktekst"
    t.string "linkdest"
    t.string "address1"
    t.string "address2"
    t.string "epost"
    t.string "phone"
    t.string "uselink1"
    t.string "uselink2"
    t.string "uselink3"
    t.string "uselink4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string "meal1"
    t.text "description1"
    t.string "meal2"
    t.text "description2"
    t.string "meal3"
    t.text "description3"
    t.string "meal4"
    t.text "description4"
    t.string "meal5"
    t.text "description5"
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "weekday"
  end

  create_table "navigations", force: :cascade do |t|
    t.string "name"
    t.string "path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string "heading"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string "heading"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workers", force: :cascade do |t|
    t.string "name"
    t.string "jobtitle"
    t.string "epost"
    t.string "number"
    t.text "info"
    t.string "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
