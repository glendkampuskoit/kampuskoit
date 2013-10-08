class AddFieldToProdiBidangs < ActiveRecord::Migration
  def change
	  	remove_column :prodi_bidangs, :nama_bidang
	  	remove_column :prodi_bidangs, :spesialisasi
	   	remove_column :prodi_bidangs, :gambaran
	   	remove_column :prodi_bidangs, :pilihan_karir
	   	remove_column :prodi_bidangs, :keterampilan_kunci

	  	add_column :prodi_bidangs, :nama_bidang, :text
	  	add_column :prodi_bidangs, :spesialisasi, :text
	  	add_column :prodi_bidangs, :gambaran, :text 	
	   	add_column :prodi_bidangs, :pilihan_karir, :text
	   	add_column :prodi_bidangs, :keterampilan_kunci, :text
  end
end
