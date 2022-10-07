class CreateMusicianApplicantForms < ActiveRecord::Migration[7.0]
  def change
    create_table :musician_applicant_forms do |t|
      t.string :preferred_project
      t.string :preferred_style
      t.string :instrument
      t.string :why_interest
      t.string :availability

      t.timestamps
    end
  end
end
