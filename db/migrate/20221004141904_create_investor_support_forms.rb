class CreateInvestorSupportForms < ActiveRecord::Migration[7.0]
  def change
    create_table :investor_support_forms do |t|
      t.string :currency
      t.integer :investment
      t.string :interest_reason
      t.string :investment_history

      t.timestamps
    end
  end
end
