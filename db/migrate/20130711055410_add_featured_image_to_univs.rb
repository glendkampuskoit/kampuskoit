class AddFeaturedImageToUnivs < ActiveRecord::Migration
  def change
  	add_column :univs, :featured_image, :string
  end
end
