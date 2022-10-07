class Ben < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ben_available_backstage_forms, dependent: :destroy
  has_many :ben_available_frontstage_forms, dependent: :destroy
  has_many :ben_investor_update_forms, dependent: :destroy
  has_many :ben_management_update_forms, dependent: :destroy
  has_many :ben_new_project_forms, dependent: :destroy
  has_many :ben_selection_forms, dependent: :destroy
  has_many :ben_update_forms, dependent: :destroy
  has_many :ben_user_update_forms, dependent: :destroy
  has_many :complaint_forms, dependent: :destroy
end
