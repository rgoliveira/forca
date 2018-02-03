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

ActiveRecord::Schema.define(version: 20180203121402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "code"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluation_karmas", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "evaluation_id"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluation_id"], name: "index_evaluation_karmas_on_evaluation_id"
    t.index ["student_id"], name: "index_evaluation_karmas_on_student_id"
  end

  create_table "evaluations", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "professor_id"
    t.bigint "course_id"
    t.integer "year"
    t.integer "semester"
    t.string "grade"
    t.text "comment"
    t.text "professor_reply"
    t.boolean "anonymous"
    t.datetime "professor_reply_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_evaluations_on_course_id"
    t.index ["professor_id"], name: "index_evaluations_on_professor_id"
    t.index ["student_id"], name: "index_evaluations_on_student_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "email", null: false
    t.string "full_name"
    t.string "display_name"
    t.string "website"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_professors_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "email"
    t.string "full_name"
    t.string "display_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "professor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["professor_id"], name: "index_users_on_professor_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["student_id"], name: "index_users_on_student_id"
  end

  add_foreign_key "evaluation_karmas", "evaluations"
  add_foreign_key "evaluation_karmas", "students"
  add_foreign_key "evaluations", "courses"
  add_foreign_key "evaluations", "professors"
  add_foreign_key "evaluations", "students"
  add_foreign_key "professors", "users"
  add_foreign_key "students", "users"
  add_foreign_key "users", "professors"
  add_foreign_key "users", "students"
end
