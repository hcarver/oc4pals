class SignInController < ApplicationController
  def new
  end

  def create
    user = User.find_or_create_by(email: user_params[:email])
    # Get a new auth token
    user.authentication_token = nil
    if user.save
      flash[:notice] = "Sending you an email now. Click the link in the email to sign in."
      sign_in_url = root_url(user_email: user.email, user_token: user.authentication_token, only_path: false)
      puts sign_in_url
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong. Try again or contact Hywel."
      redirect_to new_sign_in_path
    end
  end

  def user_params
    params.require(:user).permit(:email)
  end
end
