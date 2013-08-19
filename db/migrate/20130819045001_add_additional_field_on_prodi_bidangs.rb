class AddAdditionalFieldOnProdiBidangs < ActiveRecord::Migration
  def change
  	add_column :prodi_bidangs, :materi, :text
  end
end