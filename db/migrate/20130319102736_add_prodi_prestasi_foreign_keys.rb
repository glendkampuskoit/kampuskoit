class AddProdiPrestasiForeignKeys < ActiveRecord::Migration
  def up
  	add_column :prodi_prestasis, :prodi_id, :integer
  	add_index :prodi_prestasis, :prodi_id
  end

  def down
  	remove_column :prodi_id
  end
end
