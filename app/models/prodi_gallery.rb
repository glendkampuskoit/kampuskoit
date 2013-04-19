class ProdiGallery < ActiveRecord::Base
	belongs_to :prodi, :foreign_key => :prodi_id

    validates :caption, presence: true
    validates :description, presence: true
    validates :path, presence: true
    validates :prodi, presence: true
end
