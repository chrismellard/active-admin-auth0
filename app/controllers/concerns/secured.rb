module Secured
  extend ActiveSupport::Concern

  included do
    before_action :logged_in_using_omniauth?
  end

  def logged_in_using_omniauth?
    redirect_to '/auth/redirect/' unless session[:userinfo].present?
  end

  def current_user
    session[:userinfo]
  end
end
