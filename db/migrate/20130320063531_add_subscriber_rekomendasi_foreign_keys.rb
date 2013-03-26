class AddSubscriberRekomendasiForeignKeys < ActiveRecord::Migration
  def up
  	add_column :subscriber_rekomendasis, :subscriber_id, :integer
  	add_index :subscriber_rekomendasis, :subscriber_id
  end

  def down
  	remove_column :subscriber_id
  end
end
