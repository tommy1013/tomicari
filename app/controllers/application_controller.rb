class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name_kana])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name_kana])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:postal_code])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:prefecture])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:city])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:town])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:building_name])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:phone_number])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:card_number])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:expiration_number])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:security_code])
    end

end
