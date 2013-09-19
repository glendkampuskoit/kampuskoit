class CreateSubscriberPengalamanKerjas < ActiveRecord::Migration
  def change
    create_table :subscriber_pengalaman_kerjas do |t|
      t.string :instansi
      t.string :bidang
      t.string :jabatan
      t.integer :tahun_masuk
      t.integer :tahun_keluar
      t.text :sk_kerja_path
      t.integer :subscriber_id
      
      t.string :created_by
      t.string :updated_by

      t.timestamps
      t.index :subscriber_id
    end
  end
end