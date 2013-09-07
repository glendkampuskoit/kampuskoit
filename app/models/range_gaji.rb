class RangeGaji < ActiveRecord::Base
	has_many :survey_responden, :dependent => :delete_all

	validates :range, presence: true, uniqueness: { case_sensitive: false }
end
