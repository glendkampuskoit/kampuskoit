class AddSubscriberPrestasiForeignKeys < ActiveRecord::Migration
  def up
  	add_column :subscriber_prestasis, :subscriber_id, :integer
  	add_index :subscriber_prestasis, :subscriber_id
  end

  def down
  	remove_column :subscriber_id
  end
end
