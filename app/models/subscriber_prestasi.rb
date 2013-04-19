class SubscriberPrestasi < ActiveRecord::Base
	belongs_to :subscriber, :foreign_key => :subscriber_id

  	validates :nama_lomba, presence: true
	validates :peringkat, presence: true
	validates :tempat, presence: true
	validates :tahun, presence: true

end
