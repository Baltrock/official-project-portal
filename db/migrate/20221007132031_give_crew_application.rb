class GiveCrewApplication < ActiveRecord::Migration[7.0]
  def change
    add_reference :crew_applicant_forms, :user
  end
end
