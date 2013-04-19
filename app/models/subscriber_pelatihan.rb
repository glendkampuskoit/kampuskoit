class SubscriberPelatihan < ActiveRecord::Base
	belongs_to :subscriber, :foreign_key => :subscriber_id

    validates :kategori, presence: true
  	validates :judul, presence: true, :uniqueness => { :scope => [:penyelenggara, :tahun, :subscriber_id], case_sensitive: false }
  	validates :penyelenggara, presence: true  	
  	validates :skala, presence: true
  	validates :tahun, presence: true
  	validates :subscriber, presence: true
end
