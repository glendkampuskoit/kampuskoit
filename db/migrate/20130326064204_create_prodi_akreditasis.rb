class CreateProdiAkreditasis < ActiveRecord::Migration
  def change
    create_table :prodi_akreditasis do |t|
      t.string :no_sk
      t.integer :tahun_sk
      t.string :peringkat
      t.date :tanggal_kadaluarsa

      # foreign key
      t.integer :prodi_id

      t.string :status
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
    add_index :prodi_akreditasis, :prodi_id
  end
end