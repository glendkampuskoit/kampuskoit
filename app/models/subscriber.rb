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

	attr_accessible :name, :email, :password, :password_confirmation, :from_facebook, :email_activation

	has_secure_password

	before_save { |subscriber| subscriber.email = email.downcase }
	before_save :create_remember_token

	validates :name, presence: true, length: { maximum: 50 }
	validates :password, presence: true, length: { minimum: 6 }, :unless => :from_facebook, :on => :create
	validates :password_confirmation, presence: true, :unless => :from_facebook, :on => :create

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }


	private
	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end

	def self.from_omniauth(auth)
		subscriberExisting = Subscriber.find_by_email(auth.info.email)
		if !subscriberExisting
			where(auth.slice(:provider, :uid)).first_or_initialize.tap do |subscriber|
				subscriber.provider = auth.provider
				subscriber.uid = auth.uid
				subscriber.name = auth.info.name
				subscriber.email = auth.info.email
				subscriber.oath_token = auth.credentials.token
				subscriber.oath_expires = Time.at(auth.credentials.expires_at)
				subscriber.password = subscriber.password_confirmation = 'defaultpasswordmustbechanged12345465476573453534'
				subscriber.from_facebook = true
				subscriber.email_activation = true
				subscriber.save!
			end
		else
			subscriberExisting.from_facebook = true
			subscriberExisting.email_activation = true
			subscriberExisting.save
		end
	end
end