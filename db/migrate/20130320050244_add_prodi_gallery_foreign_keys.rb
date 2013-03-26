class AddProdiGalleryForeignKeys < ActiveRecord::Migration
  def up
  	add_column :prodi_galleries, :prodi_id, :integer
  	add_index :prodi_galleries, :prodi_id
  end

  def down
  	remove_column :prodi_id
  end
end
