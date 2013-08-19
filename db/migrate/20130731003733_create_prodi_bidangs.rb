class CreateProdiBidangs < ActiveRecord::Migration
  def change
    create_table :prodi_bidangs do |t|
      t.string :nama_bidang
      t.integer :level
      t.text :deskripsi

      t.timestamps
    end
  end
end