class AddProdiFasilitasGalleryForeignKeys < ActiveRecord::Migration
  def up
  	add_column :prodi_fasilitas_galleries, :prodi_fasil_id, :integer
  end

  def down
  end
end
