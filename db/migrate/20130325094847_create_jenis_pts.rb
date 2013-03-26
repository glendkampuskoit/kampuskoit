class CreateJenisPts < ActiveRecord::Migration
  def change
    create_table :jenis_pts do |t|
      t.string :jenis

      t.timestamps
    end
  end
end
