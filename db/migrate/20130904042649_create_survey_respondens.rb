class CreateSurveyRespondens < ActiveRecord::Migration
  def change
    create_table :survey_respondens do |t|
      t.integer :univ_id
      t.integer :subscriber_id
      t.integer :range_gaji_id
      t.integer :range_bidang_kerja_id
      t.integer :range_waktu_tunggu_id
  	  t.integer :range_lama_kuliah_id
  	  t.integer :range_ipk_id
  	  t.integer :range_pekerjaan_pertama_id
  	  t.integer :range_profesi_id
  	  t.integer :range_pendidikan_terakhir_id
  	  t.integer :range_gaji_pertama_id
  	  t.integer :range_level_karir_id
      t.timestamps
    end
  end
end
