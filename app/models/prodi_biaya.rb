class ProdiBiaya < ActiveRecord::Base
	belongs_to :prodi, :foreign_key => :prodi_id

	validates :biaya, presence: true
	validates :nilai, presence: true
	validates :prodi, presence: true
end
