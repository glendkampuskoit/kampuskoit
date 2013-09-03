class CreateRangeGajiPertamas < ActiveRecord::Migration
  def change
    create_table :range_gaji_pertamas do |t|
      t.string :gaji_pertama
      t.integer :bobot

      t.timestamps
    end
  end
end
