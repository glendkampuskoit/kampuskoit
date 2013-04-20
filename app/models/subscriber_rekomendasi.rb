class SubscriberRekomendasi < ActiveRecord::Base
	belongs_to :subscriber, :foreign_key => :subscriber_id

  	validates :nama_rekomendator, presence: true, :uniqueness => { :scope => [:email, :subscriber_id], case_sensitive: false }
	validates :jabatan, presence: true
	validates :telepon, presence: true

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
	validates :subscriber, presence: true
end
