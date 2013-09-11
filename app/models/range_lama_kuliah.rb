class RangeLamaKuliah < ActiveRecord::Base
	has_many :survey_responden, :dependent => :delete_all

	validates :lama, presence: true, uniqueness: { case_sensitive: false }
end
