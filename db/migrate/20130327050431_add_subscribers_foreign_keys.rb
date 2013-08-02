class AddSubscribersForeignKeys < ActiveRecord::Migration
  def change
  	add_column :subscribers, :provinsi_id, :integer
  	add_column :subscribers, :kota_id, :integer
  end
end