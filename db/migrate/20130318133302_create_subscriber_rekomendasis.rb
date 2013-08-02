class CreateSubscriberRekomendasis < ActiveRecord::Migration
  def change
    create_table :subscriber_rekomendasis do |t|
      t.string :nama_rekomendator
      t.string :jabatan
      t.string :email
      t.string :telepon

      t.timestamps
    end
  end
end