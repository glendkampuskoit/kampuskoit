class CrateUnivSubRankingsTable < ActiveRecord::Migration
  def change
    create_table :univsubrankings do |t|
      t.integer :univ_id
      t.double :sub_akreditasi
      t.double :sub_jenis
      t.double :sub_degree
      t.double :sub_skala
      t.double :sub_jumlah_mahasiswa
      t.double :sub_prestasi
      t.double :sub_kerjasama
      t.double :sub_alumni
      t.double :sub_ekspertise
      t.double :sub_rating_user
      t.double :sub_popularity
      t.string :status

      t.timestamps
    end
  end
end
