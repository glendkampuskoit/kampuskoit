class CreateProdiPrestasis < ActiveRecord::Migration
  def change
    create_table :prodi_prestasis do |t|
      t.integer :tahun
      t.text :prestasi

      t.timestamps
    end
  end
end
