class ProdiBidang < ActiveRecord::Base

	validates :nama_bidang, presence: true, uniqueness: { case_sensitive: false }
	validates :level, presence: true
	#validates :deskripsi, presence: true
	validates :lapangan_kerja, presence: true
	validates :materi, presence: true

	has_many :prodis
end