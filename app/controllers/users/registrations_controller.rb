class Users::RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters

  def show
    @user = User.find(params[:id])
  end

  protected

  # my custom fields are :name, :last_name
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:name, :last_name,
        :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:name, :last_name,
        :email, :password, :password_confirmation, :current_password)
    end
  end

  def after_update_path_for(resource)
    user_path(resource)
  end
end
