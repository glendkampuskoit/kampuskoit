FactoryGirl.define do
	factory :subscriber do
		name	"Glend Maatita"
		sequence(:email){|n| "glend_maatita#{n}@yahoo.com" }
		password  "password"
		password_confirmation "password"
		from_facebook false
		email_activation false
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
		sequence(:jenis){|n| "Jenis#{n}" }
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
end