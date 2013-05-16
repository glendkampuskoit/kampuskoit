class Admin < ActiveRecord::Base

	ROLES = %w[admin editor operator]

	attr_accessible :nama, :email, :password, :password_confirmation
	has_secure_password

	before_save { |admin| admin.email = email.downcase }
	before_save :create_remember_token

	private
	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end

	validates :nama, presence: true

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
