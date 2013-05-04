ThinkingSphinx::Index.define 'prodi', :with => :active_record do
  indexes nama_prodi, :sortable => true
  indexes univ.nama_pt
  indexes kota.kota
  indexes profile
  indexes kota.provinsi.provinsi

  #has "CRC32(prodi_akreditasi.peringkat)", :as => :akreditasi, :type => :integer
  #has "CRC32(prodi_akreditasi.status)", :as => :status_akreditasi, :type => :integer

  has prodi_akreditasis.peringkat, :as => :akreditasi, :type => :integer
  has prodi_akreditasis.status, :as => :status_akreditasi, :type => :integer

  has kota_id, :as => :kota_id
  has jenjang_prodi_id, :as => :jenjang_prodi_id
  has kota.provinsi_id, :as => :provinsi_id
end