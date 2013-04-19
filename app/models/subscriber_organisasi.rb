class SubscriberOrganisasi < ActiveRecord::Base
	belongs_to :subscriber, :foreign_key => :subscriber_id

  	validates :jabatan, presence: true
  	validates :tingkat, presence: true
  	validates :periode, presence: true
  	validates :subscriber, presence: true
  	validates :nama_organisasi, presence: true, :uniqueness => { :scope => [:jabatan, :periode, :subscriber_id], case_sensitive: false }
end
