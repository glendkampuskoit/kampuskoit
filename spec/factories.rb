FactoryGirl.define do
	factory :subscriber do
		name	"Glend Maatita"
		email	"glend_maatita@yahoo.com"
		password  "password"
		password_confirmation "password"
		from_facebook false
		email_activation false
	end

	factory :visitor do
		email	"glend_maatita@yahoo.com"
	end

	factory :kota do
		kota "Surabaya"
		provinsi_id "1"
	end

	factory :provinsi do
		provinsi "Jawa Timur"
	end	
	
	factory :jenis_pt do
		jenis "Universitas"
	end	

	factory :univ do
		nama_pt		"Institut Teknologi Surabaya"
		tahun_berdiri	"1999"
		email 	"redaksi@si.its.com"
		website 	"www.its.ac.id"
		alamat 		"Sukolilo Surabaya"
		telepon 	"087999"
		status_negeri	"negeri"
	end

	factory :jenjang_prodi do
		jenjang		"S1"
	end
end