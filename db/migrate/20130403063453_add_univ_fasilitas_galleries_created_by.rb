class AddUnivFasilitasGalleriesCreatedBy < ActiveRecord::Migration
  def up
  	add_column :univ_fasilitas_galleries, :created_by, :string
  	add_column :univ_fasilitas_galleries, :updated_by, :string
  end

  def down
  	remove_column :univ_fasilitas_galleries, :created_by
  	remove_column :univ_fasilitas_galleries, :updated_by
  end
end
