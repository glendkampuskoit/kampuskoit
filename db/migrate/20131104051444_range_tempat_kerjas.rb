class RangeTempatKerjas < ActiveRecord::Migration
  def change
    create_table :range_tempat_kerjas do |t|
      t.string :tempat_kerja
      t.integer :bobot

      t.timestamps
    end
  end
end
