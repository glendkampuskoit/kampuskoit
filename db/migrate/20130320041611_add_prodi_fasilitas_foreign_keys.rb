class AddProdiFasilitasForeignKeys < ActiveRecord::Migration
  def up
  	add_column :prodi_fasilitases, :prodi_id, :integer
  	add_index :prodi_fasilitases, :prodi_id
  end

  def down
  	remove_column :prodi_id
  end
end
