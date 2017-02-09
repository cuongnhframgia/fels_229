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

ActiveRecord::Schema.define(version: 20170209052310) do

  create_table "activities", force: :cascade do |t|
    t.integer  "id_User"
    t.integer  "id_Target"
    t.integer  "type_Activity"
    t.string   "Content"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "answers", force: :cascade do |t|
    t.integer  "id_Word"
    t.string   "Content"
    t.boolean  "is_Correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.integer  "id_User"
    t.integer  "id_Category"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "id_Followed"
    t.integer  "id_Follower"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer  "id_Lession"
    t.integer  "id_Answer"
    t.integer  "id_Word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "password"
    t.string   "name"
    t.string   "email"
    t.boolean  "is_admin"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "password_digest"
    t.string   "password_confirmation"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "words", force: :cascade do |t|
    t.integer  "id_Category"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
