class CreateUnivgalleries < ActiveRecord::Migration
  def change
    create_table :univgalleries do |t|
      t.text :caption
      t.text :description
      t.integer :univ_id
  		
      # image
      t.string :image

      t.string :created_by
      t.string :updated_by 

      t.timestamps
      t.index :univ_id
    end
  end
end