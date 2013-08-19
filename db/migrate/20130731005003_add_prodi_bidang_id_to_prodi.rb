class AddProdiBidangIdToProdi < ActiveRecord::Migration
  def change
  	add_column :prodis, :prodi_bidang_id, :integer
  end
end