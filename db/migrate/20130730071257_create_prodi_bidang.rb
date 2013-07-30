class CreateProdiBidang < ActiveRecord::Migration
  def change
  	  create_table :prodi_bidangs do |t|
      t.string :nama_bidang
      t.string :level
      t.text :deskripsi
  	end
  end
end
