class CreateUnivprestasis < ActiveRecord::Migration
  def change
    create_table :univprestasis do |t|
      t.integer :tahun
      t.text :prestasi

      t.timestamps
    end
  end
end