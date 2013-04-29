class CreateProdis < ActiveRecord::Migration
  def change
    create_table :prodis do |t|
      t.string :nama_prodi
      t.string :jenjang
      t.integer :tahun_berdiri
      t.string :fakultas
      t.text :alamat
      t.string :telepon
      t.string :fax
      t.string :email
      t.string :website
      t.text :profile
      t.integer :jumlah_mahasiswa
      t.text :bidang_studi
      t.text :kompetensi
      t.text :seleksi_masuk
      t.text :logo_path

      # staff pengajar
      t.integer :total_dosen_prof
      t.integer :total_dosen_doktor
      t.integer :total_dosen_master
      t.integer :total_dosen_sarjana

      t.timestamps
    end
  end
end
