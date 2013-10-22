class RangeLevelKarir < ActiveRecord::Base	
	has_many :survey_responden, :dependent => :delete_all
end
