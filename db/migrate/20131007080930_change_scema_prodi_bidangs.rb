class ChangeScemaProdiBidangs < ActiveRecord::Migration
  def change
  	remove_column :prodi_bidangs, :level
  	remove_column :prodi_bidangs, :deskripsi
  	remove_column :prodi_bidangs, :lapangan_kerja
  	remove_column :prodi_bidangs, :materi
   	remove_column :prodi_bidangs, :kompetensi

  	add_column :prodi_bidangs, :gambaran, :string
  	add_column :prodi_bidangs, :pilihan_karir, :string
  	add_column :prodi_bidangs, :keterampilan_kunci, :string 	
  end
end
