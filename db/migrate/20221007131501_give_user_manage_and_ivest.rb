class GiveUserManageAndIvest < ActiveRecord::Migration[7.0]
  def change
    add_reference :information_forms, :user
    add_reference :information_forms, :management
    add_reference :information_forms, :investor
  end
end
