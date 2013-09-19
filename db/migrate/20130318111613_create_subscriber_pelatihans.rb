class CreateSubscriberPelatihans < ActiveRecord::Migration
  def change
    create_table :subscriber_pelatihans do |t|
      t.string :kategori
      t.text :judul
      t.string :penyelenggara
      t.string :skala
      t.integer :tahun
      t.text :sertifikat_path
      t.integer :subscriber_id
      
      t.string :created_by
      t.string :updated_by 

      t.timestamps
      t.index :subscriber_id
    end
  end
end