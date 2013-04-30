ThinkingSphinx::Index.define 'prodi', :with => :active_record do
  indexes nama_prodi
  indexes univ.nama_pt
  indexes kota.kota
  indexes profile
  indexes kota.provinsi.provinsi

  has kota_id, :as => :kota_id
  has jenjang_prodi_id, :as => :jenis_prodi_id
  has kota.provinsi_id, :as => :provinsi_id
end