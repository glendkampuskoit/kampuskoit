class CreateProdiSilabuses < ActiveRecord::Migration
  def change
    create_table :prodi_silabuses do |t|
      t.text :tujuan
      t.text :kompetensi
      t.text :pokok_bahasan
      t.text :referensi
      t.text :mata_kuliah      
      t.integer :prodi_id
      
      t.string :created_by
      t.string :updated_by 

      t.timestamps
    end
    add_index :prodi_silabuses, :prodi_id
  end
end