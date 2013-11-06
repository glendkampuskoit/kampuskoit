class CreateRangeTempatTinggals < ActiveRecord::Migration
  def change
    create_table :range_tempat_tinggals do |t|
      t.string :tempat_tinggal
      t.integer :bobot

      t.timestamps
    end
  end
end
