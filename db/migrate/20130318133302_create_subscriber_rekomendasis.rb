class CreateSubscriberRekomendasis < ActiveRecord::Migration
  def change
    create_table :subscriber_rekomendasis do |t|
      t.string :nama_rekomendator
      t.string :jabatan
      t.string :email
      t.string :telepon

      t.integer :subscriber_id
  		
      t.string :created_by
      t.string :updated_by 

      t.timestamps
      t.index :subscriber_id
    end
  end
end