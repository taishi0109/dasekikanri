class ApplicationController < ActionController::Base
  protect_from_forgery whit: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: [:configure_permitted_parameters]
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) 
  end
end
