class Kota < ActiveRecord::Base
	has_many :univs, :dependent => :delete_all
	belongs_to :provinsi, :foreign_key => :provinsi_id

	validates :kota, presence: true, uniqueness: { case_sensitive: false }
	validates :provinsi, presence: true

	scope :provinsi_kota_tersebut, joins(:provinsi).where("provinsi.provinsi_id = ?", :provinsi_id)
end
