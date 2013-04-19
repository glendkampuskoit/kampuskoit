require 'spec_helper'

describe SubscriberPelatihan do
  before { @subscriberpelatihan = SubscriberPelatihan.new(
    subscriber: FactoryGirl.create(:subscriber),
    kategori: "Enterpreneur", 
    judul:"Tehnopreneur Bidang Sains", 
    penyelenggara:"Institut Teknologi Sepuluh Nopember", 
    skala:"Nasional", 
    tahun:"2013", 
    sertifikat_path: 'A:\START\tutorial') }
  
  subject{ @subscriberpelatihan }
  it { should respond_to(:kategori) }
  it { should respond_to(:judul) }
  it { should respond_to(:penyelenggara) }
  it { should respond_to(:skala) }
  it { should respond_to(:tahun) }
  it { should respond_to(:sertifikat_path) }
  it { should respond_to(:subscriber) }

  it { should belong_to(:subscriber) }

  it { should be_valid }

  describe "when subscriber is nil" do
    before { @subscriberpelatihan.subscriber = nil } 
    it { should_not be_valid }
  end

  describe "When kategori is blank" do
    before { @subscriberpelatihan.kategori = "" } 
    it { should_not be_valid }
  end

  describe "When judul is blank" do
    before { @subscriberpelatihan.judul = "" } 
    it { should_not be_valid }
  end

  describe "When penyelenggara is blank" do
    before { @subscriberpelatihan.penyelenggara = "" } 
    it { should_not be_valid }
  end

  describe "When skala is blank" do
    before { @subscriberpelatihan.skala = "" } 
    it { should_not be_valid }
  end

  describe "When tahun is blank" do
    before { @subscriberpelatihan.tahun = "" } 
    it { should_not be_valid }
  end

  describe "When sertifikat_path is blank" do
    before { @subscriberpelatihan.sertifikat_path = "" } 
    it { should be_valid }
  end

  describe "subscriber, judul, penyelenggara, tahun must be unique with case insensitive" do
    before do
      @subscriberpelatihan_dup = SubscriberPelatihan.new(
        subscriber: @subscriberpelatihan.subscriber,
        kategori: "enterpreneur", 
        judul:"tehnopreneur bidang sains", 
        penyelenggara:"institut teknologi sepuluh nopember", 
        skala:"Nasional",
        tahun:"2013")
      @subscriberpelatihan_dup.save
    end
    it { should_not be_valid }
  end
end
