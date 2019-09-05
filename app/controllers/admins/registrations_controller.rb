# frozen_string_literal: true

class Admins::RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_admin!, :redirect_unless_admin,  only: [:new, :create]
  skip_before_action :require_no_authentication

  private
  def redirect_unless_admin
    if !admin_signed_in?
      flash[:error] = "Only admins can do that"
      redirect_to new_admin_session_path
    end
  end

  def sign_up(resource_name, resource)
    true
  end
end
