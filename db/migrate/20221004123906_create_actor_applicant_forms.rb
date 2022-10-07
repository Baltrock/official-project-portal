class CreateActorApplicantForms < ActiveRecord::Migration[7.0]
  def change
    create_table :actor_applicant_forms do |t|
      t.string :preferred_project
      t.string :preferred_roles
      t.string :interest_reason
      t.string :availability

      t.timestamps
    end
  end
end
