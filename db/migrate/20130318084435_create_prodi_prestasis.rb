class CreateProdiPrestasis < ActiveRecord::Migration
  def change
    create_table :prodi_prestasis do |t|
      t.integer :tahun
      t.text :prestasi

      t.integer, :prodi_id
  		t.index :prodi_id

      t.timestamps
    end
  end
end