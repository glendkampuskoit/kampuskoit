class JenisPt < ActiveRecord::Base
	has_many :univs, :dependent => :delete_all

	validates :jenis, presence: true, uniqueness: { case_sensitive: false }
end
