class CreateProdifasilitas < ActiveRecord::Migration
  def change
    create_table :prodi_fasilitas do |t|
      t.text :fasilitas

      t.timestamps
    end
  end
end
