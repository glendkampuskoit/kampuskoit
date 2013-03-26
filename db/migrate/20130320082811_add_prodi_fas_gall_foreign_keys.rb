class AddProdiFasGallForeignKeys < ActiveRecord::Migration
  def up
  	add_column :prodi_fasilitas_galleries, :prodifasilitas_id, :integer
  	add_index :prodi_fasilitas_galleries, :prodifasilitas_id
  end

  def down
  	remove_column :prodifasilitas_id
  end
end
