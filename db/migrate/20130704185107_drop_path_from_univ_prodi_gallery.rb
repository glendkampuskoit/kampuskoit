class DropPathFromUnivProdiGallery < ActiveRecord::Migration
  def change
  	remove_column :univgalleries, :path
  	remove_column :prodi_galleries, :path
  end
end