class SubscriberBeasiswa < ActiveRecord::Base
	belongs_to :subscriber

  	validates :nama_beasiswa, presence: true
  	validates :instansi, presence: true
  	validates :periode, presence: true
  	validates :nilai, presence: true
end
