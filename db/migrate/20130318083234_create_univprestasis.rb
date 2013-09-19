class CreateUnivprestasis < ActiveRecord::Migration
  def change
    create_table :univprestasis do |t|
      t.integer :tahun
      t.text :prestasi
      t.integer :univ_id
  		
  		t.string :created_by
      t.string :updated_by 
      
      t.timestamps
      t.index :univ_id
    end
  end
end