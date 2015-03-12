class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_i18n_locale_from_params

  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  def redirect_back_or(path)
    redirect_to request.referer || path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
  end

def set_i18n_locale_from_params 
  if params[:locale]
    if I18n.available_locales.map(&:to_s).include?(params[:locale])
      I18n.locale = params[:locale]
    else
      flash.now[:notice] =
        "#{params[:locale]} translation not available"
      logger.error flash.now[:notice]
    end 
  end
end

def default_url_options
  { locale: I18n.locale }
end

private

  def verify_is_admin
  	(current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
	end

end
