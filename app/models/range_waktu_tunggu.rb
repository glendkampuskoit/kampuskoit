class RangeWaktuTunggu < ActiveRecord::Base
	has_many :survey_responden, :dependent => :delete_all

	validates :waktu_tunggu, presence: true, uniqueness: { case_sensitive: false }
end
