class AddUnivFasGallForeignKeys < ActiveRecord::Migration
  def up
  	add_column :univ_fasilitas_galleries, :univfasilitas_id, :integer
  	add_index :univ_fasilitas_galleries, :univfasilitas_id
  end

  def down
  	remove_column :univfasilitas_id
  end
end