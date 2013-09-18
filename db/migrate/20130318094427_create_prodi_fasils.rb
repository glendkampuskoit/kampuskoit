class CreateProdiFasils < ActiveRecord::Migration
  def change
    create_table :prodi_fasils do |t|
      t.text :fasilitas

      t.integer :prodi_id
  		t.index :prodi_id

      t.timestamps
    end
  end
end