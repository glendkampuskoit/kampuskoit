require 'spec_helper'

describe ProdiAkreditasi do
  before { @prodiakreditasi = ProdiAkreditasi.new(no_sk: "SK 0190. 09", tahun_sk: 2013, peringkat: "Harapan 1", 
    tanggal_kadaluarsa: "09-09-2013", prodi: FactoryGirl.create(:prodi) ) }

  subject{ @prodiakreditasi }
  it { should respond_to(:no_sk) }
  it { should respond_to(:tahun_sk) }
  it { should respond_to(:peringkat) }
  it { should respond_to(:tanggal_kadaluarsa) }
  it { should respond_to(:prodi) }

  it { should belong_to(:prodi) }

  describe "should be valid" do
    it { should be_valid }
  end

  describe "When no_sk is blank" do
    before { @prodiakreditasi.no_sk = "" } 
    it { should_not be_valid }
  end

  describe "When tahun_sk is blank" do
    before { @prodiakreditasi.tahun_sk = "" } 
    it { should_not be_valid }
  end

  describe "When peringkat is blank" do
    before { @prodiakreditasi.peringkat = "" } 
    it { should_not be_valid }
  end
  describe "When tanggal_kadaluarsa is blank" do
    before { @prodiakreditasi.tanggal_kadaluarsa = "" } 
    it { should_not be_valid }
  end

end
