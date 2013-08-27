class DeleteProdifasilIdFromProdiFasilGallery < ActiveRecord::Migration
  def up
  	remove_column :prodi_fasilitas_galleries, :prodifasil_id
  end

  def down
  end
end
