class Management < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :management_applicant_forms, dependent: :destroy
  has_many :management_request_forms, dependent: :destroy
  has_many :management_review_forms, dependent: :destroy
  has_many :complaint_forms, dependent: :destroy
  has_many :transfer_forms, dependent: :destroy
  has_one :resignation_form, dependent: :destroy
  has_one :information_form, dependent: :destroy
end
