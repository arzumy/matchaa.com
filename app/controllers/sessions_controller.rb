class SessionsController < Devise::SessionsController
  def create
    if user = User.find_by_authentication_token(params[:authentication_token])
      set_flash_message(:notice, :signed_in) if is_navigational_format?
      sign_in(:user, user)
      render :text => 'logged in'
      #respond_with user, :location => redirect_location(:users, user)
    else
      render :text => 'not logged in'
    end
  end

  def destroy
    current_user.update_attributes(authentication_token: nil)
    super
  end
end