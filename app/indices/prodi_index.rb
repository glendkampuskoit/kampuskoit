ThinkingSphinx::Index.define 'prodi', :with => :active_record do
  indexes nama_prodi
  indexes univ.nama_pt
  indexes kota.kota
  indexes profile

  has kota.provinsi_id, :as => :provinsi_id
end