class DeleteProdiRelatedTable < ActiveRecord::Migration
  def up
  	drop_table :prodi_silabuses
  	drop_table :prodi_prestasis
  	drop_table :prodi_galleries
  	drop_table :prodi_fasils
  	drop_table :prodi_fasilitas_galleries
  	drop_table :prodi_biayas
  end

  def down
  end
end
