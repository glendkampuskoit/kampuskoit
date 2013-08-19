class AddProdiAkreditasiForeignKeys < ActiveRecord::Migration
  def change
  	add_column :prodi_akreditasis, :prodi_id, :integer
  end
end
