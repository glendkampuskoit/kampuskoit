class UnivFasilitasGallery < ActiveRecord::Base
	belongs_to :univ_fasilitas, :foreign_key => :univ_fasilitas_id
end
