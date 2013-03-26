class AddUnivForeignKeys < ActiveRecord::Migration
  def up
  	add_column :univs, :kota_id, :integer
  	add_index :univs, :kota_id
  end

  def down
  	remove_column :univs, :kota_id
  end
end
