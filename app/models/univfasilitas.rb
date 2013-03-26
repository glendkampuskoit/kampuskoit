class Univfasilitas < ActiveRecord::Base
	belogs_to :univ, :foreign_key => :univ_id
	has_many :univ_fasilitas_galleries
end
