module CurrentUserConcern
  extend ActiveSupport::Concern

  included do
    def current_user
      super || guest_user
    end
  end

  private

  def guest_user
    guest_user = GuestUser.new.tap do |guest|
      guest.name = 'Guest User'
      guest.email = 'guest@user.com'
      guest.first_name = 'Guest'
      guest.middle_name = nil
      guest.last_name = 'User'
    end
  end
end
