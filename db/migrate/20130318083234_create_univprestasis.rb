class CreateUnivprestasis < ActiveRecord::Migration
  def change
    create_table :univprestasis do |t|
      t.integer :tahun
      t.text :prestasi

      t.integer :univ_id
  		t.index :univ_id
      t.timestamps
    end
  end
end