class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   before_action :configure_permitted_parameters, if: :devise_controller?
	protect_from_forgery with: :exception 
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:name,:last_name,:weight, :height,:sex,:birthdate)
  	devise_parameter_sanitizer.for(:account_update).push(:name,:last_name,:weight, :height,:sex,:birthdate)
  end
end