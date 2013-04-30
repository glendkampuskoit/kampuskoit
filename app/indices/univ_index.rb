ThinkingSphinx::Index.define 'univ', :with => :active_record do
  indexes nama_pt
  indexes profile
  indexes kota.kota

  has kota.provinsi_id, :as => :provinsi_id
end