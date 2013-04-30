class Prodi < ActiveRecord::Base
	include ThinkingSphinx::Scopes	
	
	belongs_to :univ, :foreign_key => :univ_id
	belongs_to :kota, :foreign_key => :kota_id
	belongs_to :jenjang_prodi, :foreign_key => :jenjang_prodi_id
	has_many :prodi_prestasis, :dependent => :delete_all
	has_many :prodi_fasils, :dependent => :delete_all
	has_many :prodi_silabuses, :dependent => :delete_all
	has_many :prodi_galleries, :dependent => :delete_all
	has_many :prodi_akreditasis, :dependent => :delete_all
	has_many :prodi_biaya, :dependent => :delete_all

	validates :nama_prodi, presence: true, length: { maximum: 255 }, :uniqueness => { :scope => [:jenjang_prodi_id, :univ_id], case_sensitive: false }
	validates :fakultas, presence: true
	validates :tahun_berdiri, presence: true
	validates :alamat, presence: true
	validates :telepon, presence: true
	validates :website, presence: true
	validates :univ, presence: true
	validates :kota, presence: true
	validates :jenjang_prodi, presence: true

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

	sphinx_scope(:by_jenjang_prodi) { |jenjang_prodi_id|
		{:conditions => {:jenjang_prodi_id => jenjang_prodi_id}}
	}

	sphinx_scope(:by_provinsi) { |provinsi_id| 
		{:conditions => {:provinsi_id => provinsi_id}}
	}

	def self.filter_by_params(params)
	  self.by_jenjang_prodi(params[:jenjang_prodi_id]) if params[:jenjang_prodi_id]          
	  self.by_provinsi(params[:provinsi_id]) if params[:provinsi_id]
	  self.paginate(:page => params[:page]) if params[:page]
	  self
	end
end
