class Univprestasi < ActiveRecord::Base
	belongs_to :univ, :foreign_key => :univ_id

	validates :tahun, presence: true
	validates :prestasi, presence: true
end
