class AddUnivKerjasamaForeignKeys < ActiveRecord::Migration
  def up
  	add_column :univkerjasamas, :univ_id, :integer
  	add_index :univkerjasamas, :univ_id
  end

  def down
  	remove_column :univkerjasamas, :univ_id
  end
end
