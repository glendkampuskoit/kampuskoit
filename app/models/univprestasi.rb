class Univprestasi < ActiveRecord::Base
	belongs_to :univ, :foreign_key => :univ_id

	validates :tahun, presence: true
	validates :prestasi, presence: true, :uniqueness => { :scope => [:univ_id], case_sensitive: false }
	validates :univ, presence: true
end
