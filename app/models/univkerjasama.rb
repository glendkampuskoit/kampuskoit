class Univkerjasama < ActiveRecord::Base
	belongs_to :univ, :foreign_key => :univ_id
	validates :kerjasama, presence: true, :uniqueness => { :scope => [:univ_id], case_sensitive: false }
	validates :univ, presence: true
end
