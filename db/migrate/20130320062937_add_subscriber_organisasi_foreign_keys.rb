class AddSubscriberOrganisasiForeignKeys < ActiveRecord::Migration
  def up
  	add_column :subscriber_organisasis, :subscriber_id, :integer
  	add_index :subscriber_organisasis, :subscriber_id
  end

  def down
  	remove_column :subscriber_id
  end
end
