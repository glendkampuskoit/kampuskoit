class SubscriberPengalamanKerja < ActiveRecord::Base
	belongs_to :subscriber, :foreign_key => :subscriber_id

	validates :instansi, presence: true, :uniqueness => { :scope => [:jabatan, :bidang, :subscriber_id], case_sensitive: false }
	validates :bidang, presence: true
	validates :jabatan, presence: true
	validates :tahun_masuk, presence: true
	validates :tahun_keluar, presence: true
	validates :subscriber, presence: true
end
