class ApplicationController < ActionController::Base
 

  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  
    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :role, :date_of_birth, :years_played) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :current_password) }
    end
 
end
