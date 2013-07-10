class Univgallery < ActiveRecord::Base
	belongs_to :univ, :foreign_key => :univ_id

	validates :caption, presence: true
	validates :description, presence: true
	validates :image, presence: true
	validates :univ, presence: true

	mount_uploader :image, UnivgalleriesUploader
end
