class AddProdiFasilitasGalleryForeignKeys < ActiveRecord::Migration
  def change
  	add_column :prodi_fasilitas_galleries, :prodi_fasil_id, :integer
  end
end