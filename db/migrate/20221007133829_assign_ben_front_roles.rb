class AssignBenFrontRoles < ActiveRecord::Migration[7.0]
  def change
    add_reference :ben_available_frontstage_forms, :ben
  end
end
