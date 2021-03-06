class CreateUnivFasilitasGalleries < ActiveRecord::Migration
  def change
    create_table :univ_fasilitas_galleries do |t|
      t.string :caption
      t.text :description
      t.integer :univfasilitas_id

      #image
      t.string :image

      t.string :created_by
      t.string :updated_by 

      t.timestamps
    end
    add_index :univ_fasilitas_galleries, :univfasilitas_id
  end
end
