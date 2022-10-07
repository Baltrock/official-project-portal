class AssignBenBackRoles < ActiveRecord::Migration[7.0]
  def change
    add_reference :ben_available_backstage_forms, :ben
  end
end
