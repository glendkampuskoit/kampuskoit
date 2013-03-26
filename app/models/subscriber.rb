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

	before_save { |user| user.email = email.downcase }
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
		userExisting = User.find_by_email(auth.info.email)
		if !userExisting
			where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
				user.provider = auth.provider
				user.uid = auth.uid
				user.name = auth.info.name
				user.email = auth.info.email
				user.oath_token = auth.credentials.token
				user.oath_expires = Time.at(auth.credentials.expires_at)
				user.password = user.password_confirmation = 'defaultpasswordmustbechanged12345465476573453534'
				user.from_facebook = true
				user.email_activation = true
				user.save!
			end
		else
			userExisting.from_facebook = true
			userExisting.email_activation = true
			userExisting.save
		end
	end
end