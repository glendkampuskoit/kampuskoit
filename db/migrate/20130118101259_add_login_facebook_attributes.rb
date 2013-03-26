class AddLoginFacebookAttributes < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :oath_token, :string
    add_column :users, :oath_expires, :datetime
  end
end
