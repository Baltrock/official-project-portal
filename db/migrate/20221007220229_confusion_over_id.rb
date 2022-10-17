class ConfusionOverId < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key "actor_applicant_forms", "users"
    add_foreign_key "musician_applicant_forms", "users"
    add_foreign_key "crew_applicant_forms", "users"
    add_foreign_key "artist_applicant_forms", "users"
    add_foreign_key "investor_company_forms", "investors"
    add_foreign_key "investor_support_forms", "investors"
    add_foreign_key "investor_sponsor_forms", "investors"
    add_foreign_key "management_applicant_forms", "managements"
    add_foreign_key "management_request_forms", "managements"
    add_foreign_key "ben_available_backstage_forms", "bens"
    add_foreign_key "ben_available_frontstage_forms", "bens"
    add_foreign_key "ben_new_project_forms", "bens"
    add_foreign_key "ben_selection_forms", "bens"
    add_foreign_key "ben_management_update_forms", "bens"
    add_foreign_key "ben_investor_update_forms", "bens"
    add_foreign_key "ben_user_update_forms", "bens"
    add_foreign_key "ben_update_forms", "bens"
    add_foreign_key "glitch_input_forms", "glitches"
    add_foreign_key "ben_overall_project_finance_forms", "bens"
    add_foreign_key "ben_key_project_finance_forms", "bens"
  end
end
