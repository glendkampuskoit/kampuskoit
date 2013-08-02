class AddProdiAkreditasiStatusField < ActiveRecord::Migration
  def change
  	add_column :prodi_akreditasis, :status, :string
  end
end