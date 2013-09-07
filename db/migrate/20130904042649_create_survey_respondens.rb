class CreateSurveyRespondens < ActiveRecord::Migration
  def change
    create_table :survey_respondens do |t|
      t.string :univ_id
      t.string :subscriber_id
      t.string :range_gaji_id
      t.string :range_bidang_kerja_id
      t.string :range_waktu_tunggu_id
  	  t.string :range_lama_kuliah_id
  	  t.string :range_ipk_id
  	  t.string :range_pekerjaan_pertama_id
  	  t.string :range_profesi_id
  	  t.string :range_pendidikan_terakhir_id
  	  t.string :range_gaji_pertama_id
  	  t.string :range_level_karir_id
      t.timestamps
    end
  end
end
