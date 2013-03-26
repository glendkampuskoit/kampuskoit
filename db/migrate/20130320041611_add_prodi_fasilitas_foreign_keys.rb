class AddProdiFasilitasForeignKeys < ActiveRecord::Migration
  def up
  	add_column :prodi_fasilitas, :prodi_id, :integer
  	add_index :prodi_fasilitas, :prodi_id
  end

  def down
  	remove_column :prodi_id
  end
end
