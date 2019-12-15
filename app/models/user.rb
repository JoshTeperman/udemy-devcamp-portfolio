class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  petergate(roles: [:admin], multiple: false)                                      ##`
  ############################################################################################


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  scope :users, -> { where(roles: 'user') }
  scope :admins, -> { where(roles: 'admin') }

  def first_name
    name.split.first.capitalize
  end

  def middle_name
    name.split[1..-2].map(&:capitalize).join(' ') if name.split.length > 2
  end

  def last_name
    name.split.last.capitalize if name.split.length > 1
  end
end
