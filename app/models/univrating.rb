class Univrating < ActiveRecord::Base

	belongs_to :univ, :foreign_key => :univ_id

	validates :univ, presence: true
	validates :nilai, presence: true
	validates :status, presence: true

end
