module Placeholder
  extend ActiveSupport::Concern
  
  def image_generator(height:, width:)
    "http://placehold.it/#{width}x#{height}"
  end
end 