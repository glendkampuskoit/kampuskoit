class Provinsi < ActiveRecord::Base
	has_many :kotas
	has_many :subscribers
	has_many :prodis
end
