class AddProdiForeignKeys < ActiveRecord::Migration
  def up
  	add_column :prodis, :univ_id, :integer
  	add_column :prodis, :kota_id, :integer
  	add_index :prodis, :univ_id
  	add_index :prodis, :kota_id
  end

  def down
  	remove_column :prodis, :univ_id
  	remove_column :prodis, :kota_id
  end
end
