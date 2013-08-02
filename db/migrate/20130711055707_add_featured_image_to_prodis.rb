class AddFeaturedImageToProdis < ActiveRecord::Migration
  def change
  	add_column :prodis, :featured_image, :string
  end
end