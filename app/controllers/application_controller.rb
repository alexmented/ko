class ApplicationController < ActionController::Base
    before_action :set_locale
  protect_from_forgery with: :exception

  def default_url_options(options={})
    { locale: I18n.locale }
  end

  before_action :require_login

  include SessionHelper

  private

  def require_login
      unless signed_in?
          flash[:danger] = "Необходимо войти"
          redirect_to session_login_path
      end
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

end
