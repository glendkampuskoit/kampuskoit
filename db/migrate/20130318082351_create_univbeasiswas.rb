class CreateUnivbeasiswas < ActiveRecord::Migration
  def change
    create_table :univbeasiswas do |t|
      t.string :nama_beasiswa
      t.string :instansi
      t.string :periode
      t.string :nilai

      t.integer :univ_id
  		t.index :univ_id

      t.timestamps
    end
  end
end