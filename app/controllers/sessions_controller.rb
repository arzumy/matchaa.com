class SessionsController < Devise::SessionsController
  def create_token
    if user = User.find_by_email(params[:user][:email])
      user.reset_authentication_token!
      Mailer.token(user).deliver
      flash[:notice] =  "Please check your email to login"
    else
      flash[:alert] =  "Sorry, can't find your email'"
    end
    redirect_to new_user_session_path
  end

  def create
    if user = User.find_by_authentication_token(params[:authentication_token])
      set_flash_message(:notice, :signed_in) if is_navigational_format?
      sign_in(:user, user)
      flash[:notice] = "Welcome back!"
    else
      flash[:alert] =  "Sorry, can't sign you in"
    end
    redirect_to root_path
  end

  def destroy
    current_user.reset_authentication_token! if user_signed_in?
    super
  end
end