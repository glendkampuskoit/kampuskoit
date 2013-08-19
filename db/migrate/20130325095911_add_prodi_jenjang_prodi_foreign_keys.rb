class AddProdiJenjangProdiForeignKeys < ActiveRecord::Migration
  def up
  	add_column :prodis, :jenjang_prodi_id, :integer
  	remove_column :prodis, :jenjang
  end

  def down
  end
end
