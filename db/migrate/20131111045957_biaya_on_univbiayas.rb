class BiayaOnUnivbiayas < ActiveRecord::Migration
	def change
	   	remove_column :univbiayas, :biaya

	  	add_column :univbiayas, :pendaftaran, :text
	  	add_column :univbiayas, :sks, :text
	  	add_column :univbiayas, :spp, :text
	  	add_column :univbiayas, :sppp, :text
	end

end
