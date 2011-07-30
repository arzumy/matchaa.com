class RegistrationsController < Devise::RegistrationsController
  def clean_up_passwords(resource)
  end

  def redirect_location(resource_name, resource)
    new_match_path
  end
end