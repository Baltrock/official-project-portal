class GiveUserAndManageTransfer < ActiveRecord::Migration[7.0]
  def change
    add_reference :transfer_forms, :user
    add_reference :transfer_forms, :management
  end
end
