class Provinsi < ActiveRecord::Base
	has_many :kotas, :dependent => :delete_all
	has_many :subscribers, :dependent => :delete_all
	has_many :prodis, :dependent => :delete_all

	validates :provinsi, presence: true, uniqueness: { case_sensitive: false }
end
