class CreateRangeProfesis < ActiveRecord::Migration
  def change
    create_table :range_profesis do |t|
      t.string :profesi
      t.integer :bobot

      t.timestamps
    end
  end
end
