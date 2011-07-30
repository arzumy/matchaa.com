class RegistrationsController < Devise::RegistrationsController
  def clean_up_passwords(resource)
  end
end