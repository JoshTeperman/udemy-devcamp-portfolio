class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SourceTracker
  include CurrentUserConcern
  include DefaultPageContent
end
