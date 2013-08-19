class AddProdiFasilitasGalleriesCreatedBy < ActiveRecord::Migration
  def change
  	add_column :prodi_fasilitas_galleries, :created_by, :string
  	add_column :prodi_fasilitas_galleries, :updated_by, :string
  end
end