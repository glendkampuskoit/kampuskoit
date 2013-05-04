class AddProdiAkreditasiStatusField < ActiveRecord::Migration
  def up
  	add_column :prodi_akreditasis, :status, :string
  end

  def down
  	add_column :prodi_akreditasis, :status
  end
end
