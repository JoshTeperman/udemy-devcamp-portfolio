class Portfolio < ApplicationRecord
  include Placeholder
  
  validates :title, :body, :main_image, :thumb_image, presence: true
  after_initialize :set_defaults
  
  has_many :technologies

  private

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '400', width: '600')
    self.thumb_image ||= Placeholder.image_generator(height: '200', width: '350')
  end
end
