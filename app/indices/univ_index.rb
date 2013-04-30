ThinkingSphinx::Index.define 'univ', :with => :active_record do
  indexes nama_pt, :sortable => true
  indexes profile
  indexes kota.kota
  indexes kota.provinsi.provinsi

  has kota_id, :as => :kota_id
  has jenis_pt_id, :as => :jenis_pt_id
  has kota.provinsi_id, :as => :provinsi_id
end