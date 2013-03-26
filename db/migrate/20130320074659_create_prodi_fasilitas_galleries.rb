class CreateProdiFasilitasGalleries < ActiveRecord::Migration
  def change
    create_table :prodi_fasilitas_galleries do |t|

      t.timestamps
    end
  end
end
