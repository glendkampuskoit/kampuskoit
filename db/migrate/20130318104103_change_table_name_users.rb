class ChangeTableNameUsers < ActiveRecord::Migration
  def change
  	rename_table :users, :subscribers
  end
end
