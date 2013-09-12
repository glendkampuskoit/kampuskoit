class RangePekerjaanPertama < ActiveRecord::Base
	has_many :survey_responden, :dependent => :delete_all

	validates :pekerjaan_pertama, presence: true, uniqueness: { case_sensitive: false }
end

