class AddSubscriberPendidikanForeignKey < ActiveRecord::Migration
  def up
  	add_column :subscriber_pendidikans, :subscriber_id, :integer
  end

  def down
  end
end
