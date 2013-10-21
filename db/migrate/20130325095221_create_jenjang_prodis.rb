class CreateJenjangProdis < ActiveRecord::Migration
  def change
    create_table :jenjang_prodis do |t|
      t.string :jenjang
      t.string :keterangan

      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end