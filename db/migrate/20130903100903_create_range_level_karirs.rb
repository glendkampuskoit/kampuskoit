class CreateRangeLevelKarirs < ActiveRecord::Migration
  def change
    create_table :range_level_karirs do |t|
      t.string :level_karir
      t.integer :bobot

      t.timestamps
    end
  end
end
