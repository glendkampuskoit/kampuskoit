class CreateRangePekerjaanPertamas < ActiveRecord::Migration
  def change
    create_table :range_pekerjaan_pertamas do |t|
      t.string :pekerjaan_pertama
      t.integer :bobot

      t.timestamps
    end
  end
end
