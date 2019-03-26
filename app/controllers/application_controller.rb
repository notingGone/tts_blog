class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  #https://stackoverflow.com/questions/4269270/rails-3-setting-the-timezone-to-the-current-users-timezone
  # before_action :set_user_time_zone

  # private

  # def set_user_time_zone
  #   Time.zone = current_user.settings(:main).time_zone if current_user
  #   yield
  # end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar])
  end
end
