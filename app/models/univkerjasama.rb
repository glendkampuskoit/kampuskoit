class Univkerjasama < ActiveRecord::Base
	belongs_to :univ, :foreign_key => :univ_id
end
