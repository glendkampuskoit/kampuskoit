class CreateProdiGalleries < ActiveRecord::Migration
  def change
    create_table :prodi_galleries do |t|
      t.string :caption
      t.text :description
      t.integer :prodi_id

      t.string :created_by
      t.string :updated_by

      #image
      t.string :image

      t.timestamps
    end
    add_index :prodi_galleries, :prodi_id
  end
end