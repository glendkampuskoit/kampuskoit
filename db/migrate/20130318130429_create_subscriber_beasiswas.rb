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
    end
    add_index :subscriber_beasiswas, :subscriber_id
  end
end