class AddImageToUnivFasilitasGalleries < ActiveRecord::Migration
  def change
    add_column :univ_fasilitas_galleries, :image, :string

  end
end
