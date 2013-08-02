class AddExtraAttributeForRegistration < ActiveRecord::Migration
  def change
  	add_column :users, :from_facebook, :boolean, default: false
  	add_column :users, :email_activation, :boolean, default: false
  end
end