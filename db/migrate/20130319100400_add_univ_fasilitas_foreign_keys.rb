class AddUnivFasilitasForeignKeys < ActiveRecord::Migration
  def up
  	add_column :univfasilitases, :univ_id, :integer
  	add_index :univfasilitases, :univ_id
  end

  def down
  	remove_column :univ_id
  end
end
