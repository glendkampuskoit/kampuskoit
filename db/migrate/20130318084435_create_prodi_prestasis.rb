class CreateProdiPrestasis < ActiveRecord::Migration
  def change
    create_table :prodi_prestasis do |t|
      t.integer :tahun
      t.text :prestasi
      t.integer, :prodi_id
  		
  		t.string :created_by
      t.string :updated_by 

      t.timestamps
      t.index :prodi_id
    end
  end
end