class CreateProdisilabuses < ActiveRecord::Migration
  def change
    create_table :prodi_silabuses do |t|
      t.text :tujuan
      t.text :kompetensi
      t.text :pokok_bahasan
      t.text :referensi

      t.timestamps
    end
  end
end
