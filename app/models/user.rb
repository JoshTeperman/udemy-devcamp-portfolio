class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

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
