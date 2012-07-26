class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if current_user.is_company
      new_company_profile_path
      else
        new_user_profile_path
      end
  end
end
