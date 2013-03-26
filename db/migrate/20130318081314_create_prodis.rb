class CreateProdis < ActiveRecord::Migration
  def change
    create_table :prodis do |t|
      t.string :nama_prodi
      t.string :jenjang
      t.integer :tahun_berdiri
      t.text :alamat
      t.string :telepon
      t.string :email
      t.string :website
      t.text :profile

      t.timestamps
    end
  end
end
