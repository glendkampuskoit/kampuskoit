class AddUnivFasilitasGalleriesCreatedBy < ActiveRecord::Migration
  def change
  	add_column :univ_fasilitas_galleries, :created_by, :string
  	add_column :univ_fasilitas_galleries, :updated_by, :string
  end
end