class SurveyResponden < ActiveRecord::Base
		belongs_to :univ, foreign_key: :univ_id
		belongs_to :prodi, foreign_key: :prodi_id
		belongs_to :subscriber, foreign_key: :subscriber_id
		belongs_to :range_gaji, foreign_key: :range_gaji_id
		belongs_to :range_gaji_pertama, foreign_key: :range_gaji_pertama_id
		belongs_to :range_ipk, foreign_key: :range_ipk_id
		belongs_to :range_lama_kuliah, foreign_key: :range_lama_kuliah_id
		belongs_to :range_pekerjaan_pertama, foreign_key: :range_pekerjaan_pertama_id
		belongs_to :range_pendidikan_terakhir, foreign_key: :range_pendidikan_terakhir_id
		belongs_to :range_profesi, foreign_key: :range_profesi_id
		belongs_to :range_waktu_tunggu, foreign_key: :range_waktu_tunggu_id
		belongs_to :range_bidang_kerja, foreign_key: :range_bidang_kerja_id
		belongs_to :range_level_karir, foreign_key: :range_level_karir_id
		belongs_to :range_tempat_tinggal, foreign_key: :range_tempat_tinggal_id
		belongs_to :range_tempat_kerja, foreign_key: :range_tempat_kerja_id

    validates :range_gaji, presence: true
    validates :range_bidang_kerja, presence: true
    validates :range_waktu_tunggu, presence: true
		validates :range_lama_kuliah, presence: true
		validates :range_ipk, presence: true
		validates :range_pekerjaan_pertama, presence: true
		validates :range_profesi, presence: true
		validates :range_pendidikan_terakhir, presence: true
		validates :range_gaji_pertama, presence: true
		validates :range_level_karir, presence: true
		validates :range_tempat_tinggal, presence: true
		validates :range_tempat_kerja, presence: true
		validates :range_level_karir, presence: true
		validates :univ, presence: true
		validates :prodi, presence: true
		validates :sertifikasi_professional, presence: true
		validates :usia, presence: true
		validates :alamat, presence: true
		validates :jenis_kelamin, presence: true
		validates :tahun_lulus, presence: true, length: { maximum: 4 }

end
