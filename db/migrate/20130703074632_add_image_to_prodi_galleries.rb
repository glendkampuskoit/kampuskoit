class AddImageToProdiGalleries < ActiveRecord::Migration
  def change
    add_column :prodi_galleries, :image, :string
  end
end