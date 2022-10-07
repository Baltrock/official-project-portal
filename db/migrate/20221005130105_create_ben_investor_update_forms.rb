class CreateBenInvestorUpdateForms < ActiveRecord::Migration[7.0]
  def change
    create_table :ben_investor_update_forms do |t|
      t.string :update_title
      t.string :projects_involved
      t.string :update_description

      t.timestamps
    end
  end
end
