class Subscriber < ActiveRecord::Base
	
	has_many :subscriber_beasiswas, :dependent => :delete_all
	has_many :subscriber_organisasis, :dependent => :delete_all
	has_many :subscriber_pendidikans, :dependent => :delete_all
	has_many :subscriber_pengalaman_kerjas, :dependent => :delete_all
	has_many :subscriber_pelatihans, :dependent => :delete_all
	has_many :subscriber_prestasis, :dependent => :delete_all
	has_many :subscriber_rekomendasis, :dependent => :delete_all
	has_many :univreviews, :dependent => :delete_all

	belongs_to :provinsi, :foreign_key => :provinsi_id
	belongs_to :kota, :foreign_key => :kota_id

	attr_accessible :name, :email, :tempat_lahir, :tanggal_lahir, :agama, :alamat, :kodepos, :provinsi_id, :kota_id, :jenis_kelamin, :status_pernikahan, :telepon, :no_hp

	before_save { |subscriber| subscriber.email = email.downcase }
	before_save :create_remember_token

	validates :name, presence: true, length: { maximum: 50 }

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
				subscriber.oath_expires = Time.at(auth.credentials.expires_at) unless auth.credentials.expires_at.nil?
				subscriber.image = auth.info.image
				subscriber.save!
			end
		else
			return subscriberExisting
		end
	end
end