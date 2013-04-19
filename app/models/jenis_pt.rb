class JenisPt < ActiveRecord::Base
	has_many :univs

	validates :jenis, presence: true, uniqueness: { case_sensitive: false }
end
