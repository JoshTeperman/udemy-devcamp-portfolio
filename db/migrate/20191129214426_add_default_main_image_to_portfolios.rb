class AddDefaultMainImageToPortfolios < ActiveRecord::Migration[5.0]
  def change
    change_column_default :portfolios, :main_image, "http://placehold.it/600x400"
  end
end
