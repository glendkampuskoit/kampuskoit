class ProdiAkreditasi < ActiveRecord::Base
	belongs_to :prodi, :foreign_key => :prodi_id

	validates :no_sk, presence: true
  	validates :tahun_sk, presence: true
  	validates :peringkat, presence: true
  	validates :tanggal_kadaluarsa, presence: true
  	validates :prodi, presence: true
end
