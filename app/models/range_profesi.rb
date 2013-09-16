class RangeProfesi < ActiveRecord::Base
	has_many :survey_responden, :dependent => :delete_all

	validates :profesi, presence: true, uniqueness: { case_sensitive: false }
	validates :bobot, presence: true
end
