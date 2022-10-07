class CreateBenSelectionForms < ActiveRecord::Migration[7.0]
  def change
    create_table :ben_selection_forms do |t|
      t.string :role_involved
      t.string :project_involved
      t.string :applicant_selection

      t.timestamps
    end
  end
end
