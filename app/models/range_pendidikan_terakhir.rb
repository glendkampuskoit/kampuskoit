class RangePendidikanTerakhir < ActiveRecord::Base
	has_many :survey_responden, :dependent => :delete_all

	validates :pendidikan, presence: true, uniqueness: { case_sensitive: false }
end
