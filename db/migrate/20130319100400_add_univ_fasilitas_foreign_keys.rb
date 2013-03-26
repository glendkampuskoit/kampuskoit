class AddUnivFasilitasForeignKeys < ActiveRecord::Migration
  def up
  	add_column :univfasilitas, :univ_id, :integer
  	add_index :univfasilitas, :univ_id
  end

  def down
  	remove_column :univ_id
  end
end
