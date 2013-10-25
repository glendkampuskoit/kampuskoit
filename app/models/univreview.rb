class Univreview < ActiveRecord::Base

	belongs_to :univ, :foreign_key => :univ_id
	belongs_to :subscriber, :foreign_key => :subscriber_id

	validates :review, presence: true
	validates :univ, presence: true
	validates :subscriber, presence: true
	validates :beasiswa_point, presence: true
	validates :relevansi_point, presence: true
	validates :fasilitas_point, presence: true
	
end