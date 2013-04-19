class JenjangProdi < ActiveRecord::Base
	has_many :prodis

	validates :jenjang, presence: true, uniqueness: { case_sensitive: false }
end
