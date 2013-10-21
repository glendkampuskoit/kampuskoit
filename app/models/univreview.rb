class Univreview < ActiveRecord::Base

	belongs_to :univ
	belongs_to :subscriber

	validates :review, presence: true
	validates :fasilitas_point, presence: true
	validates :beasiswa_point, presence: true
	validates :relevansi_point, presence: true

	validates :univ, presence: true
	validates :subscriber, presence: true

end
