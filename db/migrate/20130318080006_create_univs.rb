class CreateUnivs < ActiveRecord::Migration
  def change
    create_table :univs do |t|
      t.string :nama_pt
      t.integer :tahun_berdiri
      t.string :email
      t.string :website
      t.text :alamat
      t.string :telepon
      t.string :status_negeri
      t.text :profile
      t.text :visi
      t.text :misi
      t.text :seleksi_masuk
      t.text :kapasitas_akademik
      t.text :staff_pendukung
      t.text :deskripsi
      t.text :logo_path

      # foreign key
      t.integer :kota_id
      t.integer :jenis_pt_id

      # slug
      t.string :slug

      #image
      t.string :logo
      t.string :featured_image

      #socmed
      t.string :facebook
      t.string :twitter
      t.string :youtube

      t.timestamps
      t.string :created_by
      t.string :updated_by   
    end
    add_index :univs, :slug, :unique => true
    add_index :univs, :kota_id    
  end
end