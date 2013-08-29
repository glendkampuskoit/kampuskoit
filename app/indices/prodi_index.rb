ThinkingSphinx::Index.define 'prodi', :with => :active_record do
  indexes nama_prodi, :sortable => true
  indexes univ.nama_pt
  indexes kota.kota
  indexes profile
  indexes kota.provinsi.provinsi

  has prodi_akreditasis.id, :as => :akreditasis

  has kota_id, :as => :kota_id
  has jenjang_prodi_id, :as => :jenjang_prodi_id
  has kota.provinsi_id, :as => :provinsi_id
  has univ_id, :as => :univ_id
end