class ProdiAkreditasi < ActiveRecord::Base
	belongs_to :prodi, :foreign_key => :prodi_id
end
