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
      t.index :prodi_id
    end
  end
end