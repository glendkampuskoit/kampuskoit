class Kota < ActiveRecord::Base
	has_many :univs
	belongs_to :provinsi
end
