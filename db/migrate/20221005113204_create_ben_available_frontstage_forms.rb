class CreateBenAvailableFrontstageForms < ActiveRecord::Migration[7.0]
  def change
    create_table :ben_available_frontstage_forms do |t|
      t.string :role_title
      t.string :project_involved
      t.string :role_description
      t.string :requirements
      t.integer :applicants_needed
      t.integer :applicants_filled
      t.timestamp :applicant_window_end

      t.timestamps
    end
  end
end
