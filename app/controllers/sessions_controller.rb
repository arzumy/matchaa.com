class SessionsController < Devise::SessionsController
  def create_token
    if user = User.find_by_email(params[:user][:email])
      user.reset_authentication_token!
      Mailer.token(user).deliver
      flash.now[:notice] =  "Please check your email to login"
    else
      flash.now[:alert] =  "Sorry, can't find your email'"
    end
    render :new
  end

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
    current_user.reset_authentication_token! if user_signed_in?
    super
  end
end