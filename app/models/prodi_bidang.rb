class ProdiBidang < ActiveRecord::Base

	validates :nama_bidang, presence: true, uniqueness: { case_sensitive: false }
	validates :level, presence: true
	validates :deskripsi, presence: true

	has_many :prodis
end