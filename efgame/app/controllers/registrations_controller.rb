class RegistrationsController < Devise::RegistrationsController
  # Override the action you want here.

  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :captcha)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password, :captcha)
  end

end