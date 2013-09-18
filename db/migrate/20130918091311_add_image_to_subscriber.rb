class AddImageToSubscriber < ActiveRecord::Migration
  def change
  	add_column :subscribers, :image, :string
  end
end
