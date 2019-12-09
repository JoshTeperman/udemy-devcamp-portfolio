module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_defaults
  end

  private

  def set_page_defaults
    @page_title = 'My Portfolio | Josh Teperman'
    @seo_keywords = 'Josh Teperman portfolio programming developer engineering web development'
  end
end
