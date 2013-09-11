class CreateRangePendidikanTerakhirs < ActiveRecord::Migration
  def change
    create_table :range_pendidikan_terakhirs do |t|
      t.string :pendidikan
      t.integer :bobot

      t.timestamps
    end
  end
end
