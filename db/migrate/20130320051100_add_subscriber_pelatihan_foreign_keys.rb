class AddSubscriberPelatihanForeignKeys < ActiveRecord::Migration
  def up
  	add_column :subscriber_pelatihans, :subscriber_id, :integer
  	add_index :subscriber_pelatihans, :subscriber_id
  end

  def down
  	remove_column :subscriber_id
  end
end
