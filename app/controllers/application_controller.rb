class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # important
  # before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def is_image_owner
    image = Image.find(params[:id])
    user = User.find(params[:user_id])
    if !current_user
      flash[:alert] = "Please login"
      redirect_to new_user_session_path
    elsif current_user.id != image.user_id
      flash[:alert] = 'You are not authorized to edit this image'
      redirect_to user_image_path(user, image)
    end
  end
  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:image, :email, :password) }
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :avatar, :password])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:email, :avatar, :password, :current_password])
  end
end
