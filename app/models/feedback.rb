class Feedback < ActiveRecord::Base

	attr_accessible :from, :feed

	validates :from, presence: true
	validates :feed, presence: true
	
end
