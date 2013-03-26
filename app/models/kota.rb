class Kota < ActiveRecord::Base
	has_many :univs
	belogs_to :provinsi
end
