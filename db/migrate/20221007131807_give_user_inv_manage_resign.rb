class GiveUserInvManageResign < ActiveRecord::Migration[7.0]
  def change
    add_reference :resignation_forms, :user
    add_reference :resignation_forms, :management
    add_reference :resignation_forms, :investor
  end
end
