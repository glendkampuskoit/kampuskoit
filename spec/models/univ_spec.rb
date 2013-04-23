require 'spec_helper'

describe Univ do

	before { @univ = Univ.new(
		nama_pt: 'Institut Teknologi Surabaya', 
		tahun_berdiri: '1999', 
		email: 'redaksi@its.com', 
		website: 'www.its.ac.id', 
		alamat: 'Sukolilo Surabaya', 
		telepon: '087999', 
		status_negeri: 'negeri',
		kota: FactoryGirl.create(:kota),
		jenis_pt: FactoryGirl.create(:jenis_pt)
		)}
	subject { @univ }

	it { should respond_to(:nama_pt) }
	it { should respond_to(:tahun_berdiri) }
	it { should respond_to(:email) }
	it { should respond_to(:website) }
	it { should respond_to(:alamat) }
	it { should respond_to(:telepon) }
	it { should respond_to(:status_negeri) }
	it { should respond_to(:kota) }
	it { should respond_to(:jenis_pt) }

	it { should belong_to(:kota) }
	it { should belong_to(:jenis_pt) }
	it { should have_many(:prodis).dependent(:delete_all) }
	it { should have_many(:univbeasiswas).dependent(:delete_all) }
	it { should have_many(:univfasilitases).dependent(:delete_all) }
	it { should have_many(:univgalleries).dependent(:delete_all) }
	it { should have_many(:univkerjasamas).dependent(:delete_all) }
	it { should have_many(:univprestasis).dependent(:delete_all) }

	describe "should be valid" do
		it { should be_valid }
	end

	describe "nama_pt blank isnt valid" do
		before { @univ.nama_pt = '' }
		it { should_not be_valid }
	end

	describe "tahun berdiri blank isnt valid" do
		before { @univ.tahun_berdiri = '' }
		it { should_not be_valid }
	end

	describe "email blank isnt valid" do
		before { @univ.email = '' }
		it { should_not be_valid }
	end	

	describe "when email is invalid" do
		it "should be invalid" do
			addresses = %w[subscriber@foo,com subscriber_at_foo.org example.subscriber@foo foo@bar_bar.com foo@bar+baz.com]
			addresses.each do |invalid_address|
				@univ.email = invalid_address
				@univ.should_not be_valid
			end
		end
	end
	describe "when email is valid" do
		it "should be valid" do
			addresses = %w[subscriber@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
			addresses.each do |valid_address|
				@univ.email = valid_address
				@univ.should be_valid
			end
		end
	end

	describe "alamat blank isnt valid" do
		before { @univ.alamat = '' }
		it { should_not be_valid }
	end	

	describe "telepon blank isnt valid" do
		before { @univ.telepon = '' }
		it { should_not be_valid }
	end	

	describe "status_negeri blank isnt valid" do
		before { @univ.status_negeri = '' }
		it { should_not be_valid }
	end

	describe "nama prodi unique with case insensitive" do
		before do
			@univ_dup = Univ.new(
				nama_pt: 'institut teknologi surabaya', 
				tahun_berdiri: '1999', 
				email: 'redaksi2@its.com', 
				website: 'www.its.ac.id', 
				alamat: 'Sukolilo Surabaya', 
				telepon: '087999', 
				status_negeri: 'negeri',
				kota: FactoryGirl.create(:kota),
				jenis_pt: FactoryGirl.create(:jenis_pt))
			@univ_dup.save
		end		
		it { should_not be_valid }
	end
end
