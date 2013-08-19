class ChangeTableNameSubscriber < ActiveRecord::Migration
  def change
  	rename_table :subscribers, :visitors
  end
end