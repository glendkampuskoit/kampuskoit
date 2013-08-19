class AddProdiFasGallForeignKeys < ActiveRecord::Migration
  def up
  	add_column :prodi_fasilitas_galleries, :prodifasil_id, :integer
  	add_index :prodi_fasilitas_galleries, :prodifasil_id
  end

  def down
  	remove_column :prodifasil_id
  end
end