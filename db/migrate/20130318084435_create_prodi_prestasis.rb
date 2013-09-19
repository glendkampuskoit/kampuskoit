class CreateProdiPrestasis < ActiveRecord::Migration
  def change
    create_table :prodi_prestasis do |t|
      t.integer :tahun
      t.text :prestasi
      t.integer :prodi_id
  		
  		t.string :created_by
      t.string :updated_by 

      t.timestamps
    end
    add_index :prodi_prestasis, :prodi_id
  end
end