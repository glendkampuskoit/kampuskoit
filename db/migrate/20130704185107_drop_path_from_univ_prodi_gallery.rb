class DropPathFromUnivProdiGallery < ActiveRecord::Migration
  def up
  	remove_column :univgalleries, :path
  	remove_column :prodi_galleries, :path
  end

  def down
  end
end
