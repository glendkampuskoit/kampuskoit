require 'spec_helper'

describe ProdiBidang do
  before { @prodi_bidang = ProdiBidang.new(nama_bidang: "Sistem Informasi", spesialisasi: "Kungfu", gambaran: "Mempelajari Tentang IT", pilihan_karir: "Dosen dan Programmer", keterampilan_kunci: "analitik") }

  subject{ @prodi_bidang }

  it { should respond_to(:nama_bidang) }  
  it { should respond_to(:spesialisasi) }  
  it { should respond_to(:gambaran) }
  it { should respond_to(:pilihan_karir) }
  it { should respond_to(:keterampilan_kunci) }

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

  describe "when spesialisasi is blank" do
    before { @prodi_bidang.spesialisasi = nil }
    it { should_not be_valid }
  end

  describe "when gambaran is blank" do
    before { @prodi_bidang.gambaran = "" }
    it { should_not be_valid }
  end

  describe "when pilihan_karir is blank" do
    before { @prodi_bidang.pilihan_karir = "" }
    it { should_not be_valid }
  end

  describe "when keterampilan_kunci is blank" do
    before { @prodi_bidang.keterampilan_kunci = "" }
    it { should_not be_valid }
  end
end