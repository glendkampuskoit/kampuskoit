class CreateUnivfasilitas < ActiveRecord::Migration
  def change
    create_table :univfasilitases do |t|
      t.text :fasilitas

      t.integer :univ_id
  		t.index :univ_id

      t.timestamps
    end
  end
end