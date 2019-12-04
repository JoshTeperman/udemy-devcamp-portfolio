class Skill < ApplicationRecord
  include Placeholder
  validates :title, :percent_utilized, presence: true

  after_initialize :set_defaults

  private

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '200', width: '200')
  end
end