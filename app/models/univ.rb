class Univ < ActiveRecord::Base
	extend FriendlyId
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

	#validates :slug, presence: true
	friendly_id :nama_pt, :use => :slugged

end
