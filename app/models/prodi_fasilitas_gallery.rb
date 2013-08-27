class ProdiFasilitasGallery < ActiveRecord::Base
	belongs_to :prodi_fasil, :foreign_key => :prodi_fasil_id

	validates :caption, presence: true
	validates :description, presence: true
	validates :prodi_fasil, presence: true
	validates :image, presence: true

	mount_uploader :image, ProdiFasilitasGalleriesUploader
end
