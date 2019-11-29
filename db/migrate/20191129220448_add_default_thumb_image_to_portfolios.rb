class AddDefaultThumbImageToPortfolios < ActiveRecord::Migration[5.0]
  def change
    change_column_default :portfolios, :thumb_image, "http://placehold.it/350x200"
  end
end
