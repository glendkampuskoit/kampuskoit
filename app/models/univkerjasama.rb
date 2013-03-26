class Univkerjasama < ActiveRecord::Base
	belogs_to :univ, :foreign_key => :univ_id
end
