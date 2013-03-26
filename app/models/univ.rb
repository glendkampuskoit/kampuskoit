class Univ < ActiveRecord::Base
	belongs_to :kota, :foreign_key => :kota_id
	belongs_to :jenis_pt, :foreign_key => :jenis_pt_id
	has_many :prodis
	has_many :univbeasiswa
	has_many :univbiaya
	has_many :univfasilitas
	has_many :univgallery
	has_many :univkerjasama
	has_many :univprestasi
end
