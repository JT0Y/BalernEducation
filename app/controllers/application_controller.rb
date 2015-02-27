class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

before_action :configure_permitted_parameters, if: :devise_controller?


rescue_from ActiveRecord::RecordNotFound do
  flash[:warning] = 'Resource not found.'
  redirect_back_or root_path
end
 
def redirect_back_or(path)
  redirect_to request.referer || path
end
 
protected
 
def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << :name
  devise_parameter_sanitizer.for(:account_update) << :name
end



private

  def verify_is_admin
  	(current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
	end

end
