class GiveComplaintsOut < ActiveRecord::Migration[7.0]
  def change
    add_reference :complaint_forms, :user
    add_reference :complaint_forms, :management
    add_reference :complaint_forms, :investor
    add_reference :complaint_forms, :ben
  end
end
