class Univ < ActiveRecord::Base
	include ThinkingSphinx::Scopes

	belongs_to :kota, :foreign_key => :kota_id
	belongs_to :jenis_pt, :foreign_key => :jenis_pt_id
	has_many :prodis, :dependent => :delete_all
	has_many :univbeasiswas, :dependent => :delete_all
	has_many :univbiayas, :dependent => :delete_all
	has_many :univfasilitases, :dependent => :delete_all
	has_many :univgalleries, :dependent => :delete_all
	has_many :univkerjasamas, :dependent => :delete_all
	has_many :univprestasis, :dependent => :delete_all

	validates :nama_pt, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }
	validates :tahun_berdiri, presence: true, length: { maximum: 4 }
	validates :email, presence: true, length: { maximum: 255 }
	validates :alamat, presence: true
	validates :telepon, presence: true
	validates :status_negeri, presence: true
	validates :kota, presence: true
	validates :jenis_pt, presence: true

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

	sphinx_scope(:by_jenis_pt) { |jenis_pt_id|
		{:conditions => {:jenis_pt_id => jenis_pt_id}}
	}

	sphinx_scope(:by_provinsi) { |provinsi_id| 
		{:conditions => {:provinsi_id => provinsi_id}}
	}
	
	def self.filter_by_params(params)
	  self.by_jenis_pt(params[:jenis_pt_id]) if params[:jenis_pt_id]
	  self.by_provinsi(params[:provinsi_id]) if params[:provinsi_id]
	  self.paginate(:page => params[:page]) if params[:page]
	  self
	end
end
