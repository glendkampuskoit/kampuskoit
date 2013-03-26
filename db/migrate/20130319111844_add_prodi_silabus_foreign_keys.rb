class AddProdiSilabusForeignKeys < ActiveRecord::Migration
  def up
  	add_column :prodi_silabuses, :prodi_id, :integer
  	add_index :prodi_silabuses, :prodi_id
  end

  def down
  	remove_column :prodi_id
  end
end
