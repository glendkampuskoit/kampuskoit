class Admin < ActiveRecord::Base

	attr_accessible :name, :password, :password_confirmation
	has_secure_password

	before_save { |admin| admin.email = email.downcase }
	before_save :create_remember_token

	private
	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end
end
