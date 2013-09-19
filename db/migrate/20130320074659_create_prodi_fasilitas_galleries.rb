class CreateProdiFasilitasGalleries < ActiveRecord::Migration
  def change
    create_table :prodi_fasilitas_galleries do |t|    	
      t.text :caption
      t.text :description
      t.text :image
  		t.integer :prodi_fasil_id

  		t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end