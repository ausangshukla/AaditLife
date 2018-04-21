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

ActiveRecord::Schema.define(version: 20180421072336) do

  create_table "cardio_profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "fitness_test_id"
    t.integer "user_id"
    t.date "on_date"
    t.float "speed", limit: 24
    t.integer "bpm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fitness_test_id"], name: "index_cardio_profiles_on_fitness_test_id"
    t.index ["user_id"], name: "index_cardio_profiles_on_user_id"
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.integer "allowed_signup_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_companies_on_deleted_at"
  end

  create_table "delayed_jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "fitness_tests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "test_date"
    t.float "weight", limit: 24
    t.float "fat_percentage", limit: 24
    t.integer "body_age"
    t.float "bmi", limit: 24
    t.float "rm", limit: 24
    t.float "visc_fat", limit: 24
    t.float "sc_fat", limit: 24
    t.float "muscle_percentage", limit: 24
    t.float "fat_kg", limit: 24
    t.float "muscle_kg", limit: 24
    t.float "other_kg", limit: 24
    t.float "fat_loss", limit: 24
    t.float "muscle_gain", limit: 24
    t.float "max_speed", limit: 24
    t.float "duration", limit: 24
    t.string "reason_for_stopping"
    t.text "test_details"
    t.integer "user_id"
    t.integer "coach_id"
    t.integer "max_heart_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "current"
    t.index ["current"], name: "index_fitness_tests_on_current"
  end

  create_table "food_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.string "meal", limit: 15
    t.datetime "intake_date"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_food_logs_on_user_id"
  end

  create_table "goals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "reason"
    t.text "delight"
    t.text "frequency"
    t.text "current_activity"
  end

  create_table "medical_histories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_medical_checkup"
    t.boolean "q1"
    t.boolean "q2"
    t.boolean "q3"
    t.boolean "q4"
    t.boolean "q5"
    t.boolean "q6"
    t.boolean "q7"
    t.boolean "q8"
    t.boolean "q9"
    t.boolean "q10"
    t.boolean "q11"
    t.text "specific_issue"
  end

  create_table "schedules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "workout_id"
    t.date "scheduled_date"
    t.integer "completion_percentage"
    t.integer "rating"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "workout_type"
    t.integer "fitness_test_id"
    t.index ["fitness_test_id"], name: "index_schedules_on_fitness_test_id"
    t.index ["scheduled_date"], name: "index_schedules_on_scheduled_date"
    t.index ["user_id"], name: "index_schedules_on_user_id"
    t.index ["workout_id"], name: "index_schedules_on_workout_id"
  end

  create_table "stress_tests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "unexpected_upset", limit: 20
    t.string "unable_to_control", limit: 20
    t.string "nervous", limit: 20
    t.string "confident", limit: 20
    t.string "things_going_right", limit: 20
    t.string "cannot_cope", limit: 20
    t.string "control_irritation", limit: 20
    t.string "top_of_things", limit: 20
    t.string "anger", limit: 20
    t.string "difficulties_piling", limit: 20
    t.integer "user_id"
    t.date "test_date"
    t.integer "score"
    t.string "score_interpretation", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_stress_tests_on_user_id"
  end

  create_table "targets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "start_date"
    t.date "end_date"
    t.float "weight", limit: 24
    t.float "fat_percentage", limit: 24
    t.integer "body_age"
    t.float "bmi", limit: 24
    t.float "rm", limit: 24
    t.float "visc_fat", limit: 24
    t.float "sc_fat", limit: 24
    t.float "muscle_percentage", limit: 24
    t.float "fat_kg", limit: 24
    t.float "muscle_kg", limit: 24
    t.float "other_kg", limit: 24
    t.float "fat_loss", limit: 24
    t.float "muscle_gain", limit: 24
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_targets_on_user_id"
  end

  create_table "user_stress_tests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "test_id"
    t.integer "stress_test_id"
    t.integer "user_id"
    t.date "test_date"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stress_test_id"], name: "index_user_stress_tests_on_stress_test_id"
    t.index ["test_id"], name: "index_user_stress_tests_on_test_id"
    t.index ["user_id"], name: "index_user_stress_tests_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "gender", limit: 1
    t.integer "birth_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", limit: 15
    t.string "phone", limit: 10, default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "height", limit: 10
    t.integer "company_id"
    t.datetime "deleted_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "provider", default: "email", null: false
    t.string "uid", null: false
    t.text "tokens"
    t.boolean "accept_terms"
    t.boolean "goals_setup"
    t.boolean "initial_test_completed"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  create_table "versions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "item_type", limit: 191, null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 4294967295
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  create_table "workouts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.string "workout_type"
    t.integer "activity_time"
    t.float "activity_speed", limit: 24
    t.integer "recovery_time"
    t.integer "repeats"
    t.integer "total_duration"
    t.boolean "current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "recovery_speed", limit: 24
    t.integer "fitness_test_id"
    t.index ["current"], name: "index_workouts_on_current"
    t.index ["fitness_test_id"], name: "index_workouts_on_fitness_test_id"
    t.index ["user_id"], name: "index_workouts_on_user_id"
  end

end
