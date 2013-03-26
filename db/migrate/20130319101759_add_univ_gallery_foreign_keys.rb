class AddUnivGalleryForeignKeys < ActiveRecord::Migration
  def up
  	add_column :univgalleries, :univ_id, :integer
  	add_index :univgalleries, :univ_id
  end

  def down
  	remove_column :univ_id
  end
end
