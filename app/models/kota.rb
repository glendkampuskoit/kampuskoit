class Kota < ActiveRecord::Base
	has_many :univs
	belongs_to :provinsi, :foreign_key => :provinsi_id

	validates :kota, presence: true
end
