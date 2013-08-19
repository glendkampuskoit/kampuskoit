class CreateProdiGalleries < ActiveRecord::Migration
  def change
    create_table :prodi_galleries do |t|
      t.string :caption
      t.text :description
      t.text :path

      t.timestamps
    end
  end
end