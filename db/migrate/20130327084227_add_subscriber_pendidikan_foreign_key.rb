class AddSubscriberPendidikanForeignKey < ActiveRecord::Migration
  def change
  	add_column :subscriber_pendidikans, :subscriber_id, :integer
  end
end