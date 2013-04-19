class SubscriberPendidikan < ActiveRecord::Base
	belongs_to :subscriber, :foreign_key => :subscriber_id

    validates :jenjang, presence: true
  	validates :institusi, presence: true
  	validates :tahun_masuk, presence: true  	
  	validates :tahun_keluar, presence: true
  	validates :nilai_akhir, presence: true
  	validates :subscriber, presence: true
end
