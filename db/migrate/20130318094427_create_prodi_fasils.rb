class CreateProdiFasils < ActiveRecord::Migration
  def change
    create_table :prodi_fasils do |t|
      t.text :fasilitas

      t.timestamps
    end
  end
end
