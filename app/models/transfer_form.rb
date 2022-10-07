class TransferForm < ApplicationRecord
  belongs_to :user
  belongs_to :management
end
