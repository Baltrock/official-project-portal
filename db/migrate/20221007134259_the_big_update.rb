class TheBigUpdate < ActiveRecord::Migration[7.0]
  def change
    add_reference :actor_applicant_forms, :user
    add_reference :artist_applicant_forms, :user
    add_reference :ben_key_project_finance_forms, :ben
    add_reference :ben_new_project_forms, :ben
    add_reference :ben_overall_project_finance_forms, :ben
    add_reference :ben_selection_forms, :ben
    add_reference :glitch_input_forms, :glitch
    add_reference :investor_company_forms, :investor
    add_reference :investor_sponsor_forms, :investor
    add_reference :investor_support_forms, :investor
    add_reference :management_applicant_forms, :management
    add_reference :management_request_forms, :management
    add_reference :management_review_forms, :management
    add_reference :musician_applicant_forms, :user
  end
end
