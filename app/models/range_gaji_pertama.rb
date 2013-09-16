class RangeGajiPertama < ActiveRecord::Base
	has_many :survey_responden, :dependent => :delete_all

	validates :gaji_pertama, presence: true, uniqueness: { case_sensitive: false }
	validates :bobot, presence: true
end
