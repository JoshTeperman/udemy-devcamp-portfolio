class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SourceTracker

  def current_user
    super || guest_user
  end

  private

  def guest_user
    OpenStruct.new(name: 'Guest User', first_name: 'Guest', last_name: 'User', middle_name: nil, email: 'guest@user.com')
  end
end
