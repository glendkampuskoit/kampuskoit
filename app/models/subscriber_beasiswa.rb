class SubscriberBeasiswa < ActiveRecord::Base
	belongs_to :subscriber, :foreign_key => :subscriber_id

  	validates :nama_beasiswa, presence: true, :uniqueness => { :scope => [:instansi, :periode, :subscriber_id], case_sensitive: false }
  	validates :instansi, presence: true
  	validates :periode, presence: true
  	validates :nilai, presence: true
  	validates :subscriber, presence: true
end
