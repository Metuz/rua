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

ActiveRecord::Schema.define(version: 20160127040811) do

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

  create_table "majors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "majors", ["name"], name: "index_majors_on_name", unique: true

  create_table "posts", force: true do |t|
    t.string   "name"
    t.integer  "hrs"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["teacher_id"], name: "index_posts_on_teacher_id"

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "lname"
    t.string   "mname"
    t.string   "pin"
    t.datetime "entry"
    t.datetime "graduation"
    t.integer  "major_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pre_pin"
  end

  add_index "students", ["major_id"], name: "index_students_on_major_id"

  create_table "subject_teachers", force: true do |t|
    t.integer  "subject_id"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subject_teachers", ["subject_id"], name: "index_subject_teachers_on_subject_id"
  add_index "subject_teachers", ["teacher_id"], name: "index_subject_teachers_on_teacher_id"

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.string   "pin"
    t.float    "credits"
    t.float    "period"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "academy_id"
    t.integer  "major_id"
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
    t.integer  "total_hrs"
  end

  add_index "teachers", ["pin"], name: "index_teachers_on_pin", unique: true

  create_table "users", force: true do |t|
    t.string   "name",                   default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
