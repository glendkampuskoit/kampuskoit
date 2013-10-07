class CreateJenisPts < ActiveRecord::Migration
  def change
    create_table :jenis_pts do |t|
      t.string :jenis

      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end