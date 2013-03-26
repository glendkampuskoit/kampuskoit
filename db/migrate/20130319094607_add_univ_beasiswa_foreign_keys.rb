class AddUnivBeasiswaForeignKeys < ActiveRecord::Migration
  def up
  	add_column :univbeasiswas, :univ_id, :integer
  	add_index :univbeasiswas, :univ_id
  end

  def down
  	remove_column :univ_id
  end
end
