class CreateUnivAkreditasis < ActiveRecord::Migration
  def up
  	create_table :univ_akreditasis do |t|
      t.string :no_sk
      t.integer :tahun_sk
      t.string :peringkat
      t.date :tanggal_kadaluarsa
      t.integer :univ_id
      t.timestamps
    end
  end

  def down
  end
end
