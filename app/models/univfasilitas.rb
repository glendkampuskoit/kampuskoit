class Univfasilitas < ActiveRecord::Base
	belongs_to :univ, :foreign_key => :univ_id
	has_many :univ_fasilitas_galleries

	validates :fasilitas, presence: true, :uniqueness => { :scope => [:univ_id], case_sensitive: false }
	validates :univ, presence: true
end
