class CreateProdiSilabuses < ActiveRecord::Migration
  def change
    create_table :prodi_silabuses do |t|
      t.text :tujuan
      t.text :kompetensi
      t.text :pokok_bahasan
      t.text :referensi
      t.text :mata_kuliah
      
      t.integer :prodi_id,
      t.index :prodi_id

      t.timestamps
    end
  end
end