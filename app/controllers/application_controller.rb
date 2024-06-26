class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar_url])
  end

  def current_url(overwrite = {})
    url_for :only_path => false, :params => params.merge(overwrite)
  end
end
