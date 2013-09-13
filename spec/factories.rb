FactoryGirl.define do
	factory :subscriber do
		name	"Glend Maatita"
		sequence(:email){|n| "glend_maatita#{n}@yahoo.com" }
		password  "password"
		password_confirmation "password"
		from_facebook false
		email_activation false
		association :kota, :factory => :kota
		association :provinsi, :factory => :provinsi
	end

	factory :visitor do
		email	"glend_maatita@yahoo.com"
	end

	factory :kota do
		sequence(:kota){|n| "Kota#{n}" }
		association :provinsi, :factory => :provinsi
	end

	factory :provinsi do
		sequence(:provinsi){|n| "Provinsi#{n}" }
	end	
	
	factory :jenis_pt do
		sequence(:jenis){|n| "JenisPT#{n}" }
	end	

	factory :range_gaji do
		sequence(:range){|n| "rangeGaji#{n}" }
	end	

	factory :range_bidang_kerja do
		sequence(:bidang){|n| "rangeBidangKerja#{n}" }
	end	

	factory :range_waktu_tunggu do
		sequence(:waktu_tunggu){|n| "rangeWaktuTunggu#{n}" }
	end	

	factory :range_gaji_pertama do
		sequence(:gaji_pertama){|n| "rangeGajiPertama#{n}" }
	end	

	factory :range_ipk do
		sequence(:ipk){|n| "rangeIpk#{n}" }
	end	

	factory :range_lama_kuliah do
		sequence(:lama){|n| "rangeLamaKuliah#{n}" }
	end	

	factory :range_level_karir do
		sequence(:level_karir){|n| "rangeLevelKarir#{n}" }
	end	

	factory :range_pekerjaan_pertama do
		sequence(:pekerjaan_pertama){|n| "rangePekerjaanPertama#{n}" }
	end	

	factory :range_pendidikan_terakhir do
		sequence(:pendidikan){|n| "rangePendidikanTerakhir#{n}" }
	end	

	factory :range_profesi do
		sequence(:profesi){|n| "rangeprofesi#{n}" }
	end	

	factory :univ do
		#nama_pt		"Institut Teknologi Surabaya"
		sequence(:nama_pt){|n| "perguruan tinggi #{n}" }
		tahun_berdiri	"1999"
		sequence(:email){|n| "redaksi#{n}@its.com" }
		website 	"www.its.ac.id"
		alamat 		"Sukolilo Surabaya"
		telepon 	"087999"
		status_negeri	"negeri"
		association :kota, :factory => :kota
		association :jenis_pt, :factory => :jenis_pt
	end

	factory :prodi do
		sequence(:nama_prodi){|n| "Sistem Informasi#{n}" }
		fakultas "Fakultas Teknologi Informasi"
		tahun_berdiri "2000"
		alamat 		"Sukolilo Surabaya"
		telepon 	"087999"
		sequence(:email){|n| "redaksi#{n}@si.its.com" }
		website 	"www.its.ac.id"
		association :univ, :factory => :univ
		association :kota, :factory => :kota
		association :jenjang_prodi, :factory => :jenjang_prodi 
	end

	factory :jenjang_prodi do
		sequence(:jenjang){|n| "Jenjang#{n}" }
	end

	factory :admin do
		nama	"Glend Maatita"
		sequence(:email){|n| "redaksi#{n}@kampus.co.id" }
		password  "password"
		password_confirmation	"password"
	end

	factory :prodi_bidang do
		sequence(:nama_bidang) { |n| "Bidang Prodi#{n}" }
		level 5
		deskripsi "Belajar IT"
		lapangan_kerja "Dosen dan Programmer"
		materi "Analitik"
	end

	factory :prodi_fasil do
		sequence(:fasilitas) { |n| "Fasilitas Prodi#{n}" }
		association :prodi, :factory => :prodi
	end

	factory :prodi_prestasi do
		tahun 2005
		sequence(:prestasi) { |n| "Prestasi Prodi#{n}" }
		association :prodi, :factory => :prodi
	end

	factory :prodi_biaya do
		biaya "SPP"
		nilai "600000"
		association :prodi, :factory => :prodi
	end

	factory :univgallery do
		image File.open("spec/fixtures/files/cangkrukan.jpg")
		caption "example gallery"
		description "description gallery"
		association :univ, :factory => :univ
	end

	factory :univfasilitas do
		sequence(:fasilitas) { |n| "Fasilitas PT#{n}" }
		association :univ, :factory => :univ
	end

	factory :univkerjasama do
		sequence(:kerjasama) { |n| "Kerjasama PT#{n}" }
		association :univ, :factory => :univ
	end

	factory :univprestasi do
		tahun 2013
		sequence(:prestasi) { |n| "Prestasi#{n} PT" } 
		association :univ, :factory => :univ
	end

	factory :univbiaya do
		biaya "Uang gedung"
		nilai "1000000"
		association :univ,:factory => :univ
	end

	factory :univbeasiswa do
		nama_beasiswa "Beasiswa Sempurna"
		instansi "Sampoerna Foundation"
		periode	"2012-2013"
		nilai "50000000"
		association :univ, :factory => :univ
	end

	factory :prodi_gallery do 
		image File.open("spec/fixtures/files/cangkrukan.jpg")
		caption "example gallery"
		description "description gallery"
		association :prodi, :factory => :prodi
	end
end