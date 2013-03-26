class ProdiFasilitas < ActiveRecord::Base
	belongs_to :prodi, :foreign_key => :prodi_id
	has_many :prodi_fasilitas_galleries
end
