module CurrentUserConcern
  extend ActiveSupport::Concern

  included do
    def current_user
      super || guest_user
    end
  end

  private

  def guest_user
    GuestUser.new(name: 'Guest User', email: 'guest@user.com')
  end
end
