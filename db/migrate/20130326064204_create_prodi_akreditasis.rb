class CreateProdiAkreditasis < ActiveRecord::Migration
  def change
    create_table :prodi_akreditasis do |t|
      t.string :no_sk
      t.integer :tahun_sk
      t.string :peringkat
      t.date :tanggal_kadaluarsa

      t.timestamps
    end
  end
end