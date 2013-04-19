class SubscriberPengalamanKerja < ActiveRecord::Base
	belongs_to :subscriber, :foreign_key => :subscriber_id

	validates :instansi, presence: true
	validates :bidang, presence: true
	validates :jabatan, presence: true
	validates :tahun_masuk, presence: true
	validates :tahun_keluar, presence: true
end
