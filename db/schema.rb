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

ActiveRecord::Schema.define(version: 20151222013453) do

  create_table "academies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "academies", ["name"], name: "index_academies_on_name", unique: true

  create_table "academy_teachers", force: true do |t|
    t.integer  "academy_id"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "academy_teachers", ["academy_id"], name: "index_academy_teachers_on_academy_id"
  add_index "academy_teachers", ["teacher_id"], name: "index_academy_teachers_on_teacher_id"

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.string   "pin"
    t.string   "credits"
    t.float    "period"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["name"], name: "index_subjects_on_name", unique: true

  create_table "teachers", force: true do |t|
    t.string   "name"
    t.string   "lname"
    t.string   "mname"
    t.string   "pin"
    t.string   "degree"
    t.string   "master"
    t.string   "dictamen"
    t.string   "shift"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teachers", ["pin"], name: "index_teachers_on_pin", unique: true

end
