class UnivFasilitasGallery < ActiveRecord::Base
	belongs_to :univ_fasilitas, :foreign_key => :univfasilitas_id
end
