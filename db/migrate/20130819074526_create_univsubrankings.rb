class CreateUnivsubrankings < ActiveRecord::Migration
  def change
    create_table :univsubrankings do |t|
      t.references :univ
      t.float :sub_akreditasi
      t.float :sub_jenis
      t.float :sub_degree
      t.float :sub_skala
      t.float :sub_jumlah_mahasiswa
      t.float :sub_prestasi
      t.float :sub_kerjasama
      t.float :sub_alumni
      t.float :sub_ekspertise
      t.float :sub_rating_user
      t.float :sub_popularity
      t.string :status

      t.timestamps
      t.index :univ_id
    end    
  end
end
