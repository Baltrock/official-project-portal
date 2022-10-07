class CreateBenOverallProjectFinanceForms < ActiveRecord::Migration[7.0]
  def change
    create_table :ben_overall_project_finance_forms do |t|
      t.string :project_title
      t.string :project_description
      t.integer :total_investment
      t.string :currency
      t.string :update

      t.timestamps
    end
  end
end
