require 'spec_helper'

describe ProdiBidang do
  before { @prodi_bidang = ProdiBidang.new(nama_bidang: "Sistem Informasi", level: 4, deskripsi: "Mempelajari Tentang IT", lapangan_kerja: "Dosen dan Programmer") }

  subject{ @prodi_bidang }

  it { should respond_to(:nama_bidang) }  
  it { should respond_to(:level) }  
  it { should respond_to(:deskripsi) }
  it { should respond_to(:lapangan_kerja) }

  it { should have_many(:prodis)}

  describe "should valid" do
  	it { should be_valid }
  end

  describe "when nama_bidang is blank" do
    before { @prodi_bidang.nama_bidang = "" }
    it { should_not be_valid }
  end

  describe "when nama_bidang duplicated" do
    before do
      @prodi_bidang_dup = @prodi_bidang.dup
      @prodi_bidang_dup.save
    end

    it { should_not be_valid }
  end

  describe "when level is blank" do
    before { @prodi_bidang.level = nil }
    it { should_not be_valid }
  end

  describe "when deskripsi is blank" do
    before { @prodi_bidang.deskripsi = "" }
    it { should_not be_valid }
  end

  describe "when lapangan kerja is blank" do
    before { @prodi_bidang.lapangan_kerja = "" }
    it { should_not be_valid }
  end
end