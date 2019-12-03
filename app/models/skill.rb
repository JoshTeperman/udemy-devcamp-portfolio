class Skill < ApplicationRecord
  validates :title, :percent_utilized, presence: true

  after_initialize :set_defautls

  private

  def set_defaults
    self.badge ||= "http://placehold.it/350x200"
  end
end
