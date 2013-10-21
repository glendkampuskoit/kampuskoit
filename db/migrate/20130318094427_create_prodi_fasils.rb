class CreateProdiFasils < ActiveRecord::Migration
  def change
    create_table :prodi_fasils do |t|
      t.text :fasilitas
      t.integer :prodi_id
  		
  		t.string :created_by
      t.string :updated_by 

      t.timestamps
    end
    add_index :prodi_fasils, :prodi_id
  end
end