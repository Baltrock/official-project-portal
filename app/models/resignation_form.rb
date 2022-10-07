class ResignationForm < ApplicationRecord
  belongs_to :investor
  belongs_to :user
  belongs_to :management
end
