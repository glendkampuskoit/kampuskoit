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

	def self.filter_by_params(params)
	  scoped = self.scoped
	  scoped = scoped.where(:jenis_pt_id => params[:jenis_pt_id]) if params[:jenis_pt_id]          
	  scoped = scoped.joins(:kota).where(:provinsi_id, params[:provinsi_id]) if params[:provinsi_id]
	  scoped = scoped.search(:keyword_pt => params[:keyword_pt]) if params[:keyword_pt]
	  scoped
	end

end
