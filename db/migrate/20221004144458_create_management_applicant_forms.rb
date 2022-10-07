class CreateManagementApplicantForms < ActiveRecord::Migration[7.0]
  def change
    create_table :management_applicant_forms do |t|
      t.string :preferred_project
      t.string :management_roles
      t.string :interest_reason
      t.string :availability

      t.timestamps
    end
  end
end
