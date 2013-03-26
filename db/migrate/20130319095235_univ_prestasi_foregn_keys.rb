class UnivPrestasiForegnKeys < ActiveRecord::Migration
  def up
  	add_column :univprestasis, :univ_id, :integer
  	add_index :univprestasis, :univ_id
  end

  def down
  	remove_column :univ_id
  end
end
