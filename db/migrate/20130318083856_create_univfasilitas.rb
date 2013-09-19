class CreateUnivfasilitas < ActiveRecord::Migration
  def change
    create_table :univfasilitases do |t|
      t.text :fasilitas
      t.integer :univ_id
  		
  		t.string :created_by
      t.string :updated_by 
      
      t.timestamps
      t.index :univ_id
    end
  end
end