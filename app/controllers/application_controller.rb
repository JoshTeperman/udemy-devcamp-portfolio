class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist

  before_action :set_referrer

  private

  def set_referrer
    session[:referrer] = params[:q] if params[:q]
  end
end
