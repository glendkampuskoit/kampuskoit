class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :visitor do |t|
      t.string :email

      t.timestamps
    end
  end
end