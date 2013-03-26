class CreateJenjangProdis < ActiveRecord::Migration
  def change
    create_table :jenjang_prodis do |t|
      t.string :jenjang
      t.string :keterangan

      t.timestamps
    end
  end
end
