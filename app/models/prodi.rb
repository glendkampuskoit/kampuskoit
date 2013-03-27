class Prodi < ActiveRecord::Base
	belongs_to :univ, :foreign_key => :univ_id
	belongs_to :kota, :foreign_key => :kota_id
	belongs_to :jenjang_prodi, :foreign_key => :jenjang_prodi_id
	has_many :prodi_prestasis
	has_many :prodi_fasils
	has_many :prodi_silabuses
	has_many :prodi_galleries
	has_many :prodi_akreditasis
end
