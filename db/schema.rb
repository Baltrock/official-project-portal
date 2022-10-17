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

ActiveRecord::Schema[7.0].define(version: 2022_10_07_220229) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actor_applicant_forms", force: :cascade do |t|
    t.string "preferred_project"
    t.string "preferred_roles"
    t.string "interest_reason"
    t.string "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_actor_applicant_forms_on_user_id"
  end

  create_table "artist_applicant_forms", force: :cascade do |t|
    t.string "preferred_project"
    t.string "art_form"
    t.string "art_style"
    t.string "interest_reason"
    t.string "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_artist_applicant_forms_on_user_id"
  end

  create_table "ben_available_backstage_forms", force: :cascade do |t|
    t.string "role_title"
    t.string "project_involved"
    t.string "role_description"
    t.integer "applicants_needed"
    t.integer "applicants_filled"
    t.datetime "applicant_window_end", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ben_id"
    t.index ["ben_id"], name: "index_ben_available_backstage_forms_on_ben_id"
  end

  create_table "ben_available_frontstage_forms", force: :cascade do |t|
    t.string "role_title"
    t.string "project_involved"
    t.string "role_description"
    t.string "requirements"
    t.integer "applicants_needed"
    t.integer "applicants_filled"
    t.datetime "applicant_window_end", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ben_id"
    t.index ["ben_id"], name: "index_ben_available_frontstage_forms_on_ben_id"
  end

  create_table "ben_investor_update_forms", force: :cascade do |t|
    t.string "update_title"
    t.string "projects_involved"
    t.string "update_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ben_id"
    t.index ["ben_id"], name: "index_ben_investor_update_forms_on_ben_id"
  end

  create_table "ben_key_project_finance_forms", force: :cascade do |t|
    t.string "project_title"
    t.string "project_description"
    t.integer "total_investment"
    t.string "currency"
    t.string "update"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ben_id"
    t.index ["ben_id"], name: "index_ben_key_project_finance_forms_on_ben_id"
  end

  create_table "ben_management_update_forms", force: :cascade do |t|
    t.string "update_title"
    t.string "projects_involved"
    t.string "update_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ben_id"
    t.index ["ben_id"], name: "index_ben_management_update_forms_on_ben_id"
  end

  create_table "ben_new_project_forms", force: :cascade do |t|
    t.string "project_title"
    t.string "project_introduction"
    t.string "project_description"
    t.string "available_frontstage_roles"
    t.string "available_backstage_roles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ben_id"
    t.index ["ben_id"], name: "index_ben_new_project_forms_on_ben_id"
  end

  create_table "ben_overall_project_finance_forms", force: :cascade do |t|
    t.string "project_title"
    t.string "project_description"
    t.integer "total_investment"
    t.string "currency"
    t.string "update"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ben_id"
    t.index ["ben_id"], name: "index_ben_overall_project_finance_forms_on_ben_id"
  end

  create_table "ben_selection_forms", force: :cascade do |t|
    t.string "role_involved"
    t.string "project_involved"
    t.string "applicant_selection"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ben_id"
    t.index ["ben_id"], name: "index_ben_selection_forms_on_ben_id"
  end

  create_table "ben_update_forms", force: :cascade do |t|
    t.string "update_title"
    t.string "projects_involved"
    t.string "update_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ben_id"
    t.index ["ben_id"], name: "index_ben_update_forms_on_ben_id"
  end

  create_table "ben_user_update_forms", force: :cascade do |t|
    t.string "update_title"
    t.string "projects_involved"
    t.string "update_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ben_id"
    t.index ["ben_id"], name: "index_ben_user_update_forms_on_ben_id"
  end

  create_table "bens", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_bens_on_email", unique: true
    t.index ["reset_password_token"], name: "index_bens_on_reset_password_token", unique: true
  end

  create_table "complaint_forms", force: :cascade do |t|
    t.string "project_involved"
    t.string "complaint_cause"
    t.string "people_involved"
    t.string "desired_action"
    t.string "additional_information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "management_id"
    t.bigint "investor_id"
    t.bigint "ben_id"
    t.index ["ben_id"], name: "index_complaint_forms_on_ben_id"
    t.index ["investor_id"], name: "index_complaint_forms_on_investor_id"
    t.index ["management_id"], name: "index_complaint_forms_on_management_id"
    t.index ["user_id"], name: "index_complaint_forms_on_user_id"
  end

  create_table "crew_applicant_forms", force: :cascade do |t|
    t.string "preferred_project"
    t.string "crew_roles"
    t.string "interest_reason"
    t.string "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_crew_applicant_forms_on_user_id"
  end

  create_table "glitch_input_forms", force: :cascade do |t|
    t.string "glitch_title"
    t.string "glitch_message"
    t.string "spoiler_hint_"
    t.integer "riddle_hint"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "glitch_id"
    t.index ["glitch_id"], name: "index_glitch_input_forms_on_glitch_id"
  end

  create_table "glitches", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_glitches_on_email", unique: true
    t.index ["reset_password_token"], name: "index_glitches_on_reset_password_token", unique: true
  end

  create_table "information_forms", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "nation"
    t.string "country"
    t.string "city"
    t.integer "phone_number"
    t.string "introduction"
    t.string "bio"
    t.string "social_media"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "management_id"
    t.bigint "investor_id"
    t.index ["investor_id"], name: "index_information_forms_on_investor_id"
    t.index ["management_id"], name: "index_information_forms_on_management_id"
    t.index ["user_id"], name: "index_information_forms_on_user_id"
  end

  create_table "investor_company_forms", force: :cascade do |t|
    t.string "company_name"
    t.string "company_address"
    t.string "company_website_link"
    t.string "interest_reason"
    t.string "talk_availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "investor_id"
    t.index ["investor_id"], name: "index_investor_company_forms_on_investor_id"
  end

  create_table "investor_sponsor_forms", force: :cascade do |t|
    t.string "preferred_project"
    t.string "currency"
    t.integer "investment"
    t.string "sponsor_reason"
    t.string "invest_reason"
    t.string "investment_history"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "investor_id"
    t.index ["investor_id"], name: "index_investor_sponsor_forms_on_investor_id"
  end

  create_table "investor_support_forms", force: :cascade do |t|
    t.string "currency"
    t.integer "investment"
    t.string "interest_reason"
    t.string "investment_history"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "investor_id"
    t.index ["investor_id"], name: "index_investor_support_forms_on_investor_id"
  end

  create_table "investors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_investors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_investors_on_reset_password_token", unique: true
  end

  create_table "management_applicant_forms", force: :cascade do |t|
    t.string "preferred_project"
    t.string "management_roles"
    t.string "interest_reason"
    t.string "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "management_id"
    t.index ["management_id"], name: "index_management_applicant_forms_on_management_id"
  end

  create_table "management_request_forms", force: :cascade do |t|
    t.string "request_target"
    t.string "project_involved"
    t.string "people_involved"
    t.string "request_purpose"
    t.string "outcome_expectation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "management_id"
    t.index ["management_id"], name: "index_management_request_forms_on_management_id"
  end

  create_table "management_review_forms", force: :cascade do |t|
    t.string "review_title"
    t.string "project_involved"
    t.string "people_involved"
    t.string "review_purpose"
    t.string "outcome_recommendation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "management_id"
    t.index ["management_id"], name: "index_management_review_forms_on_management_id"
  end

  create_table "managements", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_managements_on_email", unique: true
    t.index ["reset_password_token"], name: "index_managements_on_reset_password_token", unique: true
  end

  create_table "musician_applicant_forms", force: :cascade do |t|
    t.string "preferred_project"
    t.string "preferred_style"
    t.string "instrument"
    t.string "why_interest"
    t.string "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_musician_applicant_forms_on_user_id"
  end

  create_table "resignation_forms", force: :cascade do |t|
    t.string "project_involved"
    t.string "resignation_cause"
    t.string "people_involved"
    t.string "possible_solution"
    t.string "additional_information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "management_id"
    t.bigint "investor_id"
    t.index ["investor_id"], name: "index_resignation_forms_on_investor_id"
    t.index ["management_id"], name: "index_resignation_forms_on_management_id"
    t.index ["user_id"], name: "index_resignation_forms_on_user_id"
  end

  create_table "transfer_forms", force: :cascade do |t|
    t.string "transfer_from"
    t.string "transfer_to"
    t.string "project_involved"
    t.string "transfer_reason"
    t.string "outcome_expectation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "management_id"
    t.index ["management_id"], name: "index_transfer_forms_on_management_id"
    t.index ["user_id"], name: "index_transfer_forms_on_user_id"
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

  add_foreign_key "actor_applicant_forms", "users"
  add_foreign_key "artist_applicant_forms", "users"
  add_foreign_key "ben_available_backstage_forms", "bens"
  add_foreign_key "ben_available_frontstage_forms", "bens"
  add_foreign_key "ben_investor_update_forms", "bens"
  add_foreign_key "ben_key_project_finance_forms", "bens"
  add_foreign_key "ben_management_update_forms", "bens"
  add_foreign_key "ben_new_project_forms", "bens"
  add_foreign_key "ben_overall_project_finance_forms", "bens"
  add_foreign_key "ben_selection_forms", "bens"
  add_foreign_key "ben_update_forms", "bens"
  add_foreign_key "ben_user_update_forms", "bens"
  add_foreign_key "crew_applicant_forms", "users"
  add_foreign_key "glitch_input_forms", "glitches"
  add_foreign_key "investor_company_forms", "investors"
  add_foreign_key "investor_sponsor_forms", "investors"
  add_foreign_key "investor_support_forms", "investors"
  add_foreign_key "management_applicant_forms", "managements"
  add_foreign_key "management_request_forms", "managements"
  add_foreign_key "musician_applicant_forms", "users"
end
