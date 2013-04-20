class SubscriberPrestasi < ActiveRecord::Base
	belongs_to :subscriber, :foreign_key => :subscriber_id

  	validates :nama_lomba, presence: true, :uniqueness => { :scope => [:peringkat, :subscriber_id], case_sensitive: false }
	validates :peringkat, presence: true
	validates :tempat, presence: true
	validates :tahun, presence: true
	validates :subscriber, presence: true
end
