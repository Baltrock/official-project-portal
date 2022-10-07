class CreateTransferForms < ActiveRecord::Migration[7.0]
  def change
    create_table :transfer_forms do |t|
      t.string :transfer_from
      t.string :transfer_to
      t.string :project_involved
      t.string :transfer_reason
      t.string :outcome_expectation

      t.timestamps
    end
  end
end
