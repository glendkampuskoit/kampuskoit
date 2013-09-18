class CreateSubscriberBeasiswas < ActiveRecord::Migration
  def change
    create_table :subscriber_beasiswas do |t|
      t.string :nama_beasiswa
      t.string :instansi
      t.string :periode
      t.string :nilai

      t.integer :subscriber_id
  		t.index :subscriber_id

  		t.timestamps
    end
  end
end