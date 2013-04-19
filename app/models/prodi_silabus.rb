class ProdiSilabus < ActiveRecord::Base
	belongs_to :prodi, :foreign_key => :prodi_id

  	validates :tujuan, presence: true
  	validates :kompetensi, presence: true
  	validates :pokok_bahasan, presence: true
  	validates :referensi, presence: true
  	validates :prodi, presence: true
  	validates :mata_kuliah, presence: true, uniqueness: { case_sensitive: false, :scope => :prodi_id }
  end