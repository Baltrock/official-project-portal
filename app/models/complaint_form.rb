class ComplaintForm < ApplicationRecord
  belongs_to :investor
  belongs_to :user
  belongs_to :management
  # belongs_to :ben
end
