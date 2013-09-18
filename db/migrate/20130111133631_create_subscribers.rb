class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
    	# basic info
      t.string :name
      t.string :email

      #oath gmail & facebook
      t.string :subscribers, :provider
	    t.string :subscribers, :uid
	    t.string :subscribers, :oath_token
	    t.datetime :subscribers, :oath_expires
	    t.string :subscribers, :image

	    #additional data
	    t.string :subscribers, :tempat_lahir
			t.date :subscribers, :tanggal_lahir
			t.string :subscribers, :agama
			t.string :subscribers, :jenis_kelamin
			t.string :subscribers, :status_pernikahan
			t.text :subscribers, :alamat
			t.string :subscribers, :kodepos
			t.string :subscribers, :telepon
			t.string :subscribers, :no_hp

      t.timestamps

      #foreign key
      t.integer :subscribers, :provinsi_id
  		t.integer :subscribers, :kota_id

      t.index :subscribers, :email, unique: true
    end
  end
end
