require 'spec_helper'

describe SubscriberPrestasi do
  before { @subscriberprestasi = SubscriberPrestasi.new(nama_lomba: "Olimpiade Sains", peringkat:"1",tempat:"Surabaya", tahun:"2010") }

  subject{ @subscriberprestasi }
  it { should respond_to(:nama_lomba) }
  it { should respond_to(:peringkat) }
  it { should respond_to(:tempat) }
  it { should respond_to(:tahun) }

  it { should belong_to(:subscriber) }

   describe "When nama_lomba is blank" do
    before { @subscriberprestasi.nama_lomba = " " } 
    it { should_not be_valid }
  end

    describe "When peringkat is blank" do
    before { @subscriberprestasi.peringkat = " " } 
    it { should_not be_valid }
  end

    describe "When tempat is blank" do
    before { @subscriberprestasi.tempat = " " } 
    it { should_not be_valid }
  end

    describe "When tahun is blank" do
    before { @subscriberprestasi.tahun = " " } 
    it { should_not be_valid }
  end
end
