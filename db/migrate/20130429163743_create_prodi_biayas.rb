class CreateProdiBiayas < ActiveRecord::Migration
  def change
    create_table :prodi_biayas do |t|
      t.text :biaya
      t.string :nilai
      t.integer :prodi_id
  		
      t.timestamps
      t.index :prodi_id
    end
  end
end