class Univfasilitas < ActiveRecord::Base
	belongs_to :univ, :foreign_key => :univ_id
	has_many :univ_fasilitas_galleries

	validates :fasilitas, presence: true
	validates :univ, presence: true
end
