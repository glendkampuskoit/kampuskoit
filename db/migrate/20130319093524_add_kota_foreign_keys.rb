class AddKotaForeignKeys < ActiveRecord::Migration
  def up
  	add_column :kotas, :provinsi_id, :integer
  	add_index :kotas, :provinsi_id
  end

  def down
  	remove_column :provinsi_id
  end
end
