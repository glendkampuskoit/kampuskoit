class SurveyResponden < ActiveRecord::Base
		belongs_to :univ, foreign_key: :univ_id
		belongs_to :subscriber, foreign_key: :subscriber_id

	    validates :gaji, presence: true
	    validates :bidang_kerja, presence: true
	    validates :waktu_tunggu, presence: true
		validates :lama_kuliah, presence: true
		validates :ipk, presence: true
		validates :pekerjaan_pertama, presence: true
		validates :profesi, presence: true
		validates :pendidikan_terakhir, presence: true
		validates :gaji_pertama, presence: true
		validates :level_karir, presence: true
end
