require 'spec_helper'

describe SubscriberPendidikan do
  before { @subscriberpendidikan = SubscriberPendidikan.new(jenjang: "SMA", 
    institusi:"Departemen Pendidikan Nasional", 
    tahun_masuk:"2010", 
    tahun_keluar:"2012", 
    nilai_akhir:"30", 
    path_ijazah:'A:\START\tutorial' ) }

  subject{ @subscriberpendidikan }
  it { should respond_to(:jenjang) }
  it { should respond_to(:institusi) }
  it { should respond_to(:tahun_masuk) }
  it { should respond_to(:tahun_keluar) }
  it { should respond_to(:nilai_akhir) }

  it { should belong_to(:subscriber) }

  describe "When jenjang is blank" do
    before { @subscriberpendidikan.jenjang = "" } 
    it { should_not be_valid }
  end

  describe "When institusi is blank" do
    before { @subscriberpendidikan.institusi = "" } 
    it { should_not be_valid }
  end

  describe "When tahun_masuk is blank" do
    before { @subscriberpendidikan.tahun_masuk = "" } 
    it { should_not be_valid }
  end

  describe "When tahun_keluar is blank" do
    before { @subscriberpendidikan.tahun_keluar = "" } 
    it { should_not be_valid }
  end

  describe "When nilai_akhir is blank" do
    before { @subscriberpendidikan.nilai_akhir = "" } 
    it { should_not be_valid }
  end
end
