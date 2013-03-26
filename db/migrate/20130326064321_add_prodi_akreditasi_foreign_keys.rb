class AddProdiAkreditasiForeignKeys < ActiveRecord::Migration
  def up
  	add_column :prodi_akreditasis, :prodi_id, :integer
  end

  def down
  end
end
