class AddProdiFasilitasGalleriesCreatedBy < ActiveRecord::Migration
  def up
  	add_column :prodi_fasilitas_galleries, :created_by, :string
  	add_column :prodi_fasilitas_galleries, :updated_by, :string
  end

  def down
  	remove_column :prodi_fasilitas_galleries, :created_by
  	remove_column :prodi_fasilitas_galleries, :updated_by
  end
end
