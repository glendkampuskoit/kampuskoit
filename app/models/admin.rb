class Admin < ActiveRecord::Base

	ROLES = %w[admin editor operator]

	attr_accessible :nama, :email, :password, :password_confirmation, :role
	has_secure_password

	before_save { |admin| admin.email = email.downcase }
	before_save :create_remember_token

	validates :nama, presence: true
	validates :password, presence: true, length: { minimum: 6 }, :on => :create
	validates :password_confirmation, presence: true, :on => :create

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }


	private
	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end
end
