class SurveyResponden < ActiveRecord::Base
		belongs_to :univ, foreign_key: :univ_id
		belongs_to :subscriber, foreign_key: :subscriber_id

	    validates :range_gaji_id, presence: true
	    validates :range_bidang_kerja_id, presence: true
	    validates :range_waktu_tunggu_id, presence: true
		validates :range_lama_kuliah_id, presence: true
		validates :range_ipk_id, presence: true
		validates :range_pekerjaan_pertama_id, presence: true
		validates :range_profesi_id, presence: true
		validates :range_pendidikan_terakhir_id, presence: true
		validates :range_gaji_pertama_id, presence: true
		validates :range_level_karir_id, presence: true
end
