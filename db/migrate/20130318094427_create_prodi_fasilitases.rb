class CreateProdiFasilitases < ActiveRecord::Migration
  def change
    create_table :prodi_fasilitases do |t|
      t.text :fasilitas

      t.timestamps
    end
  end
end
