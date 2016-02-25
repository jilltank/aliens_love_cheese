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

ActiveRecord::Schema.define(version: 20160224221911) do

  create_table "examples", force: :cascade do |t|
    t.string   "instance"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "city"
    t.string   "state"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "nearest_meteorite1"
    t.integer  "nacho1"
    t.integer  "nearest_meteorite2"
    t.integer  "nacho2"
    t.integer  "nearest_meteorite3"
    t.integer  "nacho3"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "meteorites", force: :cascade do |t|
    t.string   "name"
    t.string   "year"
    t.float    "lat"
    t.float    "long"
    t.integer  "nacho_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.string   "question"
    t.string   "wrong1"
    t.string   "wrong2"
    t.string   "right"
    t.string   "confirmation"
    t.string   "clue"
    t.string   "video"
    t.integer  "subject_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
