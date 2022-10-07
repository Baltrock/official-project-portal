class Investor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :investor_company_form, dependent: :destroy
  has_many :investor_sponsor_forms, dependent: :destroy
  has_one :investor_support_form, dependent: :destroy
  has_one :resignation_form, dependent: :destroy
  has_many :complaint_forms, dependent: :destroy
  has_one :information_form, dependent: :destroy
end
