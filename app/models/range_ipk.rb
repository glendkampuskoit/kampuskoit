class RangeIpk < ActiveRecord::Base
	has_many :survey_responden, :dependent => :delete_all

	validates :ipk, presence: true, uniqueness: { case_sensitive: false }
end
