module SourceTracker
  extend ActiveSupport::Concern

  included do
    before_action :set_referrer
  end

  private

  def set_referrer
    session[:referrer] = params[:q] if params[:q]
  end
end
