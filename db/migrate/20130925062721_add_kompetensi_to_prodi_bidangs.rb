class AddKompetensiToProdiBidangs < ActiveRecord::Migration
  def change
  	add_column :prodi_bidangs, :kompetensi, :string
  end
end
