class ProdiPrestasi < ActiveRecord::Base
	belongs_to :prodi, :foreign_key => :prodi_id

	validates :tahun, presence: true
	validates :prestasi, presence: true
end
