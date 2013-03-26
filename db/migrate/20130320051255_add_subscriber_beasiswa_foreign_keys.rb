class AddSubscriberBeasiswaForeignKeys < ActiveRecord::Migration
  def up
  	add_column :subscriber_beasiswas, :subscriber_id, :integer
  	add_index :subscriber_beasiswas, :subscriber_id
  end

  def down
  	remove_column :subscriber_id
  end
end
