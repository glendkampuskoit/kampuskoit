class Univkerjasama < ActiveRecord::Base
	belongs_to :univ, :foreign_key => :univ_id
	validates :kerjasama, presence: true
	validates :univ, presence: true
end
