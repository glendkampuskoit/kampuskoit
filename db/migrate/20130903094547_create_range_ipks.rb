class CreateRangeIpks < ActiveRecord::Migration
  def change
    create_table :range_ipks do |t|
      t.string :ipk
      t.integer :bobot

      t.timestamps
    end
  end
end
