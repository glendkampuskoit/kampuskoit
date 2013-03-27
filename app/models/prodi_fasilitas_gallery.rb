class ProdiFasilitasGallery < ActiveRecord::Base
	belongs_to :prodi_fasil, :foreign_key => :prodi_fasil_id
end
