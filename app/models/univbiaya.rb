class Univbiaya < ActiveRecord::Base
	belongs_to :univ, :foreign_key => :univ_id
	
	validates :biaya, presence: true
	validates :nilai, presence: true
	validates :univ, presence: true

end
