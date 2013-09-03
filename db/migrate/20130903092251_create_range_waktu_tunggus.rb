class CreateRangeWaktuTunggus < ActiveRecord::Migration
  def change
    create_table :range_waktu_tunggus do |t|
      t.string :waktu_tunggu
      t.integer :bobot

      t.timestamps
    end
  end
end
