class SubscriberRekomendasi < ActiveRecord::Base
	belongs_to :subscriber, :foreign_key => :subscriber_id

  	validates :nama_rekomendator, presence: true
	validates :jabatan, presence: true
	validates :email, presence: true, length: { maximum: 255 }
	validates :telepon, presence: true

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
