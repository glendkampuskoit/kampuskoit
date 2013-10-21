class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
    	# basic info
      t.string :name
      t.string :email
      t.string :remember_token

      #oath gmail & facebook
      t.string :provider
	    t.string :uid
	    t.string :oath_token
	    t.datetime :oath_expires
	    t.string :image

	    #additional data
	    t.string :tempat_lahir
			t.date :tanggal_lahir
			t.string :agama
			t.string :jenis_kelamin
			t.string :status_pernikahan
			t.text :alamat
			t.string :kodepos
			t.string :telepon
			t.string :no_hp

      t.timestamps

      #foreign key
      t.integer :provinsi_id
  		t.integer :kota_id
      
    end
    add_index :subscribers, :email, unique: true
  end
end
