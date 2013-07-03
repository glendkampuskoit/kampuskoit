class ProdiGallery < ActiveRecord::Base
	belongs_to :prodi, :foreign_key => :prodi_id

    validates :caption, presence: true
    validates :description, presence: true
    validates :image, presence: true
    validates :prodi, presence: true

    mount_uploader :image, ProdigalleriesUploader
end
