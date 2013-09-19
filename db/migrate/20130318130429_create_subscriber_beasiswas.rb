class CreateSubscriberBeasiswas < ActiveRecord::Migration
  def change
    create_table :subscriber_beasiswas do |t|
      t.string :nama_beasiswa
      t.string :instansi
      t.string :periode
      t.string :nilai

      t.integer :subscriber_id
  		
      t.string :created_by
      t.string :updated_by 

  		t.timestamps
      t.index :subscriber_id
    end
  end
end