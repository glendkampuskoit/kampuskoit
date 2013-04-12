require 'spec_helper'

describe SubscriberPengalamanKerja do
  before { @subscriberpengalamankerja = SubscriberPengalamanKerja.new(instansi: "Dinas Pekerjaan Umum", bidang:"Teknologi Informasi",jabatan:"Project Manager", tahun_masuk:"2010", tahun_keluar:"2012") }

  it { should belong_to(:subscriber) }

  it { should respond_to(:instansi) }
  it { should respond_to(:bidang) }
  it { should respond_to(:jabatan) }
  it { should respond_to(:tahun_masuk) }
  it { should respond_to(:tahun_keluar) }

   describe "When instansi is blank" do
    before { @subscriberpengalamankerja.instansi = " " } 
    it { should_not be_valid }
  end

    describe "When bidang is blank" do
    before { @subscriberpengalamankerja.bidang = " " } 
    it { should_not be_valid }
  end

    describe "When jabatan is blank" do
    before { @subscriberpengalamankerja.jabatan = " " } 
    it { should_not be_valid }
  end

    describe "When tahun_masuk is blank" do
    before { @subscriberpengalamankerja.tahun_masuk = " " } 
    it { should_not be_valid }
  end

    describe "When tahun_keluar is blank" do
    before { @subscriberpengalamankerja.tahun_keluar = " " } 
    it { should_not be_valid }
  end
end
