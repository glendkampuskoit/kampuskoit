class AddImageToUnivGalleries < ActiveRecord::Migration
  def change
  	add_column :univgalleries, :image, :string
  end
end