class Univ < ActiveRecord::Base
	include ThinkingSphinx::Scopes	
	belongs_to :kota, :foreign_key => :kota_id
	belongs_to :jenis_pt, :foreign_key => :jenis_pt_id
	has_many :prodis
	has_many :univbeasiswas
	has_many :univbiayas
	has_many :univfasilitases
	has_many :univgalleries
	has_many :univkerjasamas
	has_many :univprestasis
end
