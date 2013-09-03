class CreateRangeGajis < ActiveRecord::Migration
  def change
    create_table :range_gajis do |t|
      t.string :range
      t.integer :bobot

      t.timestamps
    end
  end
end
