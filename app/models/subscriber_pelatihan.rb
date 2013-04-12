class SubscriberPelatihan < ActiveRecord::Base
	belongs_to :subscriber

    validates :kategori, presence: true
  	validates :judul, presence: true
  	validates :penyelenggara, presence: true  	
  	validates :skala, presence: true
  	validates :tahun, presence: true
  	validates :sertifikat_path, presence: true
end
