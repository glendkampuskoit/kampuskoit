class UnivFasilitasGallery < ActiveRecord::Base
	belongs_to :univfasilitas, :foreign_key => :univfasilitas_id

	validates :caption, presence: true, length: { maximum: 255 }
	validates :description, presence: true
	validates :image, presence: true

	mount_uploader :image, UnivFasilitasGalleriesUploader
end
