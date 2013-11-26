class NewUnivsBiaya < ActiveRecord::Migration
  def change
  	drop_table :univbiayas
  	create_table(:univbiayas) do |t|
  		t.integer :univ_id
  		t.string :pendaftaran
  		t.string :sks
  		t.string :spp
  		t.string :sppp
  		t.timestamps
  	end
  end
end
