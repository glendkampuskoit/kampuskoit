class CreateProdiFasilitasGalleries < ActiveRecord::Migration
  def change
    create_table :prodi_fasilitas_galleries do |t|
    	
    	t.integer :prodifasil_id
  		t.index :prodifasil_id

  		t.integer :prodi_fasil_id

      t.timestamps
    end
  end
end