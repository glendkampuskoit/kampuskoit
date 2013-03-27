class AddSubscribersForeignKeys < ActiveRecord::Migration
  def up
  	add_column :subscribers, :provinsi_id, :integer
  	add_column :subscribers, :kota_id, :integer
  end

  def down
  end
end
