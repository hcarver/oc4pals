module SignInHelper
  def signed_in_path(user)
    root_url(user_email: user.email, user_token: user.authentication_token, only_path: false)
  end
end
