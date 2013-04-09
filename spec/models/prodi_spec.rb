require 'spec_helper'

describe Prodi do

	before { @prodi = Prodi.new(nama_prodi: 'Sistem Informasi', tahun_berdiri: '2000',
		alamat: 'ITS Sukolilo Surabaya', telepon: '088989898', email: 'si@its.ac.id', website: 'si.its.ac.id') }

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


end
