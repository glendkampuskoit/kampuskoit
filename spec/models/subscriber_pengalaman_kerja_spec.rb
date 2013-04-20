require 'spec_helper'

describe SubscriberPengalamanKerja do
  before { @subscriberpengalamankerja = SubscriberPengalamanKerja.new(
    subscriber: FactoryGirl.create(:subscriber), 
    instansi: "Dinas Pekerjaan Umum", 
    bidang:"Teknologi Informasi",
    jabatan:"Project Manager", 
    tahun_masuk:"2010", 
    tahun_keluar:"2012") }

  subject{ @subscriberpengalamankerja }

  it { should belong_to(:subscriber) }

  it { should respond_to(:instansi) }
  it { should respond_to(:bidang) }
  it { should respond_to(:jabatan) }
  it { should respond_to(:tahun_masuk) }
  it { should respond_to(:tahun_keluar) }
  it { should respond_to(:subscriber) }
  it { should respond_to(:sk_kerja_path) }

  it { should be_valid }

  describe "when subscriber is nil" do
    before { @subscriberpengalamankerja.subscriber = nil } 
    it { should_not be_valid }
  end

  describe "When instansi is blank" do
    before { @subscriberpengalamankerja.instansi = "" } 
    it { should_not be_valid }
  end

  describe "When bidang is blank" do
    before { @subscriberpengalamankerja.bidang = "" } 
    it { should_not be_valid }
  end

  describe "When jabatan is blank" do
    before { @subscriberpengalamankerja.jabatan = "" } 
    it { should_not be_valid }
  end

  describe "When tahun_masuk is blank" do
    before { @subscriberpengalamankerja.tahun_masuk = "" } 
    it { should_not be_valid }
  end

  describe "When tahun_keluar is blank" do
    before { @subscriberpengalamankerja.tahun_keluar = "" } 
    it { should_not be_valid }
  end

  describe "when sk kerja is blank" do
    before { @subscriberpengalamankerja.sk_kerja_path = "" } 
    it { should be_valid }
  end

  describe "subscriber, instansi, bidang, jabatan must be unique with case insensitive" do
    before do
      @subscriberpengalamankerja_dup =  SubscriberPengalamanKerja.new(
        subscriber: @subscriberpengalamankerja.subscriber, 
        instansi: "dinas pekerjaan umum", 
        bidang:"teknologi informasi",
        jabatan:"project manager", 
        tahun_masuk:"2010", 
        tahun_keluar:"2012")
      @subscriberpengalamankerja_dup.save
    end
    it { should_not be_valid }
  end
end
