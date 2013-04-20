require 'spec_helper'

describe Prodi do

	before { @prodi = Prodi.new(nama_prodi: 'Sistem Informasi', fakultas: 'Fakultas Teknologi Informasi', tahun_berdiri: '2000',
		alamat: 'ITS Sukolilo Surabaya', telepon: '088989898', email: 'si@its.ac.id', 
		website: 'si.its.ac.id', univ: FactoryGirl.create(:univ), kota: FactoryGirl.create(:kota),
		jenjang_prodi: FactoryGirl.create(:jenjang_prodi)) }

	subject { @prodi }

	it { should respond_to(:nama_prodi) }
	it { should respond_to(:tahun_berdiri) }
	it { should respond_to(:alamat) }
	it { should respond_to(:telepon) }
	it { should respond_to(:email) }
	it { should respond_to(:website) }

	it { should belong_to(:univ) }
	it { should belong_to(:kota) }
	it { should belong_to(:jenjang_prodi) }
  	it { should have_many(:prodi_prestasis) }
  	it { should have_many(:prodi_silabuses) }
  	it { should have_many(:prodi_fasils) }
  	it { should have_many(:prodi_galleries) }
  	it { should have_many(:prodi_akreditasis) }

  	describe "should be valid" do
  		it { should be_valid }
  	end

  	describe "nama prodi blank is not valid" do
  		before { @prodi.nama_prodi = '' }
		it { should_not be_valid }
  	end

  	describe "nama prodi blank is not valid" do
  		before { @prodi.tahun_berdiri = '' }
		it { should_not be_valid }
  	end

  	describe "alamat blank is not valid" do
  		before { @prodi.alamat = '' }
		it { should_not be_valid }
  	end

  	describe "telepon blank is not valid" do
  		before { @prodi.telepon = '' }
		it { should_not be_valid }
  	end

  	describe "email blank is not valid" do
  		before { @prodi.email = '' }
		it { should_not be_valid }
  	end

  	describe "when email is invalid" do
		it "should be invalid" do
			addresses = %w[subscriber@foo,com subscriber_at_foo.org example.subscriber@foo foo@bar_bar.com foo@bar+baz.com]
			addresses.each do |invalid_address|
				@prodi.email = invalid_address
				@prodi.should_not be_valid
			end
		end
	end
	describe "when email is valid" do
		it "should be valid" do
			addresses = %w[subscriber@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
			addresses.each do |valid_address|
				@prodi.email = valid_address
				@prodi.should be_valid
			end
		end
	end

	describe "nama prodi, jenjang, University must be unique with case insensitive" do
		before do
			@prodi_dup = Prodi.new(
				nama_prodi: 'Sistem Informasi', 
				fakultas: 'Fakultas Teknologi Informasi', 
				tahun_berdiri: '2000',
				alamat: 'ITS Sukolilo Surabaya', 
				telepon: '088989898', 
				email: 'si2@its.ac.id', 
				website: 'si.its.ac.id', 
				univ: @prodi.univ, 
				kota: FactoryGirl.create(:kota),
				jenjang_prodi: @prodi.jenjang_prodi)
			@prodi_dup.save
		end
		it { should_not be_valid }
	end
end
