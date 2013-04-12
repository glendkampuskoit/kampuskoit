class JenisPt < ActiveRecord::Base
	has_many :univs

	validates :jenis, presence: true
end
