class Bens::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, only: [:create]
  before_action :configure_account_update_params, only: [:update]
  protected

  def after_sign_in_path(resource)
    if resource.is_ben
      :ben_path
    else
      super
    end
  end
end
