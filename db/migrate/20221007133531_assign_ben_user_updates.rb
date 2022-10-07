class AssignBenUserUpdates < ActiveRecord::Migration[7.0]
  def change
    add_reference :ben_user_update_forms, :ben
  end
end
