class CreateSubscriberPendidikans < ActiveRecord::Migration
  def change
    create_table :subscriber_pendidikans do |t|
      t.string :jenjang
      t.string :institusi
      t.integer :tahun_masuk
      t.integer :tahun_keluar
      t.string :nilai_akhir
      t.text :path_ijazah

      t.integer :subscriber_id

      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end