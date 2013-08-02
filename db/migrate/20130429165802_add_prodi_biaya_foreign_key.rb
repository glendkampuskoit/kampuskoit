class AddProdiBiayaForeignKey < ActiveRecord::Migration
  def up
  	add_column :prodi_biayas, :prodi_id, :integer
  	add_index :prodi_biayas, :prodi_id
  end

  def down
  	remove_column :prodi_id
  end
end