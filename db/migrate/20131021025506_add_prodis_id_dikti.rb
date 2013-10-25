class AddProdisIdDikti < ActiveRecord::Migration
	def change
	  	add_column :prodis, :id_dikti, :integer
	end
end
