class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:first_name, :last_name, :preferred_name, :class_year, :current_employer, :current_position, :current_position_description, :current_position_function, :current_city, :current_country, :nationality, :service_branch, :preferred_email, :linkedin_profile, :profile_picture_link])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:first_name, :last_name, :preferred_name, :class_year, :current_employer, :current_position, :current_position_description, :current_position_function, :current_city, :current_country, :nationality, :service_branch, :preferred_email, :linkedin_profile, :profile_picture_link])
  end
  skip_before_action :verify_authenticity_token, raise: false
end
