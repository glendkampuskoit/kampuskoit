require 'spec_helper'

describe SubscriberPelatihan do
  before { @subscriberpelatihan = SubscriberPelatihan.new(kategori: "Enterpreneur", judul:"Tehnopreneur Bidang Sains", penyelenggara:"Institut Teknologi Sepuluh Nopember", skala:"Nasional", tahun:"2013", sertifikat_path: 'A:\START\tutorial') }
  
  subject{ @subscriberpelatihan }
  it { should respond_to(:kategori) }
  it { should respond_to(:judul) }
  it { should respond_to(:penyelenggara) }
  it { should respond_to(:skala) }
  it { should respond_to(:tahun) }
  it { should respond_to(:sertifikat_path) }

  it { should belong_to(:subscriber) }

  describe "When kategori is blank" do
    before { @subscriberpelatihan.kategori = " " } 
    it { should_not be_valid }
  end
  describe "When judul is blank" do
    before { @subscriberpelatihan.judul = " " } 
    it { should_not be_valid }
  end
  describe "When penyelenggara is blank" do
    before { @subscriberpelatihan.penyelenggara = " " } 
    it { should_not be_valid }
  end
  describe "When skala is blank" do
    before { @subscriberpelatihan.skala = " " } 
    it { should_not be_valid }
  end
  describe "When tahun is blank" do
    before { @subscriberpelatihan.tahun = " " } 
    it { should_not be_valid }
  end
  describe "When sertifikat_path is blank" do
    before { @subscriberpelatihan.sertifikat_path = " " } 
    it { should_not be_valid }
  end

end
