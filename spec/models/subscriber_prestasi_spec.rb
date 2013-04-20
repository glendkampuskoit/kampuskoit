require 'spec_helper'

describe SubscriberPrestasi do
  before { @subscriberprestasi = SubscriberPrestasi.new(
    subscriber: FactoryGirl.create(:subscriber),
    nama_lomba: "Olimpiade Sains", 
    peringkat:"1", 
    tempat:"Surabaya", 
    tahun:"2010") }

  subject{ @subscriberprestasi }

  it { should belong_to(:subscriber) }

  it { should respond_to(:nama_lomba) }
  it { should respond_to(:peringkat) }
  it { should respond_to(:tempat) }
  it { should respond_to(:tahun) }
  it { should respond_to(:subscriber) }

  it { should be_valid }

  describe "when subscriber is nil" do
    before { @subscriberprestasi.subscriber = nil } 
    it { should_not be_valid }
  end

  describe "When nama_lomba is blank" do
    before { @subscriberprestasi.nama_lomba = "" } 
    it { should_not be_valid }
  end

  describe "When peringkat is blank" do
    before { @subscriberprestasi.peringkat = "" } 
    it { should_not be_valid }
  end

  describe "When tempat is blank" do
    before { @subscriberprestasi.tempat = "" } 
    it { should_not be_valid }
  end

  describe "When tahun is blank" do
    before { @subscriberprestasi.tahun = "" } 
    it { should_not be_valid }
  end

  describe "When path sertifikat is blank" do
    before { @subscriberprestasi.path_sertifikat = "" } 
    it { should be_valid }
  end

  describe "subscriber, nama lomba, peringkat must be unique with case insensitive" do
    before do
      @subscriberprestasi_dup =  SubscriberPrestasi.new(
        subscriber: @subscriberprestasi.subscriber,
        nama_lomba: "Olimpiade Sains", 
        peringkat: "1", 
        tempat: "Surabaya", 
        tahun: "2010")
      @subscriberprestasi_dup.save
    end
    it { should_not be_valid }
  end
end
