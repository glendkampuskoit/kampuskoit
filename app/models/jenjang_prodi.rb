class JenjangProdi < ActiveRecord::Base
	has_many :prodis, :dependent => :delete_all

	validates :jenjang, presence: true, uniqueness: { case_sensitive: false }
end
