class AddProdiFasilForeignKeys < ActiveRecord::Migration
  def up
  	add_column :prodi_fasils, :prodi_id, :integer
  	add_index :prodi_fasils, :prodi_id
  end

  def down
  	remove_column :prodi_id
  end
end
