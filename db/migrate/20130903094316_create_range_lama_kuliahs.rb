class CreateRangeLamaKuliahs < ActiveRecord::Migration
  def change
    create_table :range_lama_kuliahs do |t|
      t.string :lama
      t.integer :bobot

      t.timestamps
    end
  end
end
