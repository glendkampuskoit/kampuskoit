class ProdiFasilitasGallery < ActiveRecord::Base
	belongs_to :prodi_fasilitas, :foreign_key => :prodi_fasilitas_id
end
