class SubscriberPrestasi < ActiveRecord::Base
	belongs_to :subscriber

  	validates :nama_lomba, presence: true
	validates :peringkat, presence: true
	validates :tempat, presence: true
	validates :tahun, presence: true

end
