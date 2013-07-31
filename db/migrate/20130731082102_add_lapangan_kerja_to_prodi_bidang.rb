class AddLapanganKerjaToProdiBidang < ActiveRecord::Migration
  def change
  	add_column :prodi_bidangs, :lapangan_kerja, :text
  end
end
