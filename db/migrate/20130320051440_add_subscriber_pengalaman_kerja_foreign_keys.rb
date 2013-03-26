class AddSubscriberPengalamanKerjaForeignKeys < ActiveRecord::Migration
  def up
  	add_column :subscriber_pengalaman_kerjas, :subscriber_id, :integer
  	add_index :subscriber_pengalaman_kerjas, :subscriber_id
  end

  def down
  	remove_column :subscriber_id
  end
end
