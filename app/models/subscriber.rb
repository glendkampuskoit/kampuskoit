class Subscriber < ActiveRecord::Base

	has_many :subscriber_beasiswas
	has_many :subscriber_organisasis
	has_many :subscriber_pendidikans
	has_many :subscriber_pengalaman_kerjas
	has_many :subscriber_pelatihans
	has_many :subscriber_prestasis
	has_many :subscriber_rekomendasis

	belongs_to :provinsis, :foreign_key => :provinsi_id
	belongs_to :kotas, :foreign_key => :kota_id

	attr_accessible :email
	before_save { |subscriber| subscriber.email = email.downcase }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
