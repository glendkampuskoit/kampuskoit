class CreateProdiBiayas < ActiveRecord::Migration
  def change
    create_table :prodi_biayas do |t|
      t.text :biaya
      t.string :nilai
      t.integer :prodi_id
  		
      t.timestamps
    end
    add_index :prodi_biayas, :prodi_id
  end
end