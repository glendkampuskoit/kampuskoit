class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
    	# basic info
      t.string :name
      t.string :email

      #oath gmail & facebook
      add_column :subscribers, :provider, :string
	    add_column :subscribers, :uid, :string
	    add_column :subscribers, :oath_token, :string
	    add_column :subscribers, :oath_expires, :datetime
	    add_column :subscribers, :image, :string

	    #additional data
	    add_column :subscribers, :tempat_lahir, :string
			add_column :subscribers, :tanggal_lahir, :date
			add_column :subscribers, :agama, :string
			add_column :subscribers, :jenis_kelamin, :string
			add_column :subscribers, :status_pernikahan, :string
			add_column :subscribers, :alamat, :text
			add_column :subscribers, :kodepos, :string
			add_column :subscribers, :telepon, :string
			add_column :subscribers, :no_hp, :string

      t.timestamps

      add_index :subscribers, :email, unique: true
    end
  end
end
