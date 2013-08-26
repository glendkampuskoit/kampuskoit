class AddColumnOnProdiFasilitasGalleries < ActiveRecord::Migration
  def change
  	add_column :prodi_fasilitas_galleries, :caption, :text
  	add_column :prodi_fasilitas_galleries, :description, :text
  	add_column :prodi_fasilitas_galleries, :image, :string
  end
end
