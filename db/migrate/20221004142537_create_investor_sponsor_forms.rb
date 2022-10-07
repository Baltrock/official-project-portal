class CreateInvestorSponsorForms < ActiveRecord::Migration[7.0]
  def change
    create_table :investor_sponsor_forms do |t|
      t.string :preferred_project
      t.string :currency
      t.integer :investment
      t.string :sponsor_reason
      t.string :invest_reason
      t.string :investment_history

      t.timestamps
    end
  end
end
