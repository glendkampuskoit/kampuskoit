class ProdiBidang < ActiveRecord::Base

	validates :nama_bidang, presence: true, uniqueness: { case_sensitive: false }
	validates :spesialisasi, presence: true
	#validates :deskripsi, presence: true
	validates :gambaran, presence: true
	validates :pilihan_karir, presence: true
	validates :keterampilan_kunci, presence: true

	has_many :prodis
end