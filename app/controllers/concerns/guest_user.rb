module GuestUser
  extend ActiveSupport::Concern

  included do
    def current_user
      super || guest_user
    end
  end

  private

  def guest_user
    OpenStruct.new(name: 'Guest User', first_name: 'Guest', last_name: 'User', middle_name: nil, email: 'guest@user.com')
  end
end
