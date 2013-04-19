class ProdiPrestasi < ActiveRecord::Base
	belongs_to :prodi, :foreign_key => :prodi_id

	validates :tahun, presence: true
	validates :prestasi, presence: true, :uniqueness => { :scope => [:tahun, :prodi_id], case_sensitive: false }
	validates :prodi, presence: true
end
