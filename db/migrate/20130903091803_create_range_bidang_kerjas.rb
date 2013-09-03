class CreateRangeBidangKerjas < ActiveRecord::Migration
  def change
    create_table :range_bidang_kerjas do |t|
      t.string :bidang
      t.integer :bobot

      t.timestamps
    end
  end
end
