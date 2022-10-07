class CreateBenNewProjectForms < ActiveRecord::Migration[7.0]
  def change
    create_table :ben_new_project_forms do |t|
      t.string :project_title
      t.string :project_introduction
      t.string :project_description
      t.string :available_frontstage_roles
      t.string :available_backstage_roles

      t.timestamps
    end
  end
end
