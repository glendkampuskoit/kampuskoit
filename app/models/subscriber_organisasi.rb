class SubscriberOrganisasi < ActiveRecord::Base
	belongs_to :subscriber

  	validates :nama_organisasi, presence: true
  	validates :jabatan, presence: true
  	validates :tingkat, presence: true
  	validates :periode, presence: true
  	validates :path_sertifikat, presence: true
end
