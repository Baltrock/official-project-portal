class PagesController < ApplicationController
  def home
  end

  def about
  end

  # if current_user = investor
  #   redirect_to investor_path
  # elsif current_user = management
  #   redirect_to management_path
  # elsif current_user = ben
  #   redirect_to ben_path
  # else
  #   redirect_to user_path
  # end

  def contact
  end

  def index
  end

  def your_order #before_filter
    if user.password.present?
     authenticate using valid_password? method of devise
   else
     redirect_to primary_url(@primary_path)
   end
  end

  def set_password
  end

  def admin_zone
  end
end
