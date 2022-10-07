class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :actor_applicant_forms, dependent: :destroy
  has_many :artist_applicant_forms, dependent: :destroy
  has_many :complaint_forms, dependent: :destroy
  has_one :information_form, dependent: :destroy
  has_many :musician_applicant_forms, dependent: :destroy
  has_one :resignation_form, dependent: :destroy
  has_many :transfer_forms, dependent: :destroy
  has_many :glitch_input_forms, dependent: :destroy
  # has_one_attached :avatar
end
