class AddPasswordResetToSubscribers < ActiveRecord::Migration
  def change
    add_column :subscribers, :password_reset_token, :string
    add_column :subscribers, :password_reset_sent_at, :datetime
  end
end
