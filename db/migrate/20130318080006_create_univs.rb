class CreateUnivs < ActiveRecord::Migration
  def change
    create_table :univs do |t|
      t.string :nama_pt
      t.integer :tahun_berdiri
      t.string :email
      t.string :website
      t.text :alamat
      t.string :telepon
      t.integer :status_negeri
      t.text :profile
      t.text :visi
      t.text :misi
      t.text :seleksi_masuk
      t.text :kapasitas_akademik
      t.text :staff_pendukung
      t.text :deskripsi
      t.text :logo_path

      t.timestamps
    end
  end
end
