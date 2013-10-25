class AddSpesialisasiToProdiBidangs < ActiveRecord::Migration
  def change
  	add_column :prodi_bidangs, :spesialisasi, :string
  end
end