require 'spec_helper'

describe Univbeasiswa do
  before { @univbeasiswa = Univbeasiswa.new(
    univ: FactoryGirl.create(:univ), 
    nama_beasiswa: "IKA ITS Scholarship", 
    instansi:"IKA ITS", 
    periode:"2014", 
    nilai:"500.000") }

  subject{ @univbeasiswa }

  it { should respond_to(:nama_beasiswa) }
  it { should respond_to(:instansi) }
  it { should respond_to(:periode) }
  it { should respond_to(:nilai) }
  it { should respond_to(:univ) }

  it { should belong_to(:univ) }

  describe "should be valid" do
    it { should be_valid }
  end

  describe "When nama_beasiswa is blank" do
    before { @univbeasiswa.nama_beasiswa = "" } 
    it { should_not be_valid }
  end

  describe "When instansi is blank" do
    before { @univbeasiswa.instansi = "" }
    it { should_not be_valid }
  end
  describe "When periode is blank" do
    before { @univbeasiswa.periode = "" } 
    it { should_not be_valid }
  end

  describe "When nilai is blank" do
    before { @univbeasiswa.nilai = "" }
    it { should_not be_valid }
  end

  describe "univ, nama beasiswa, instansi, periode must be unique with case insensitive" do
    before do
      @univbeasiswa_dup = Univbeasiswa.new(
        univ: @univbeasiswa.univ, 
        nama_beasiswa: "ika its scholarship", 
        instansi:"ika its", 
        periode:"2014", 
        nilai:"500.000")
      @univbeasiswa_dup.save
    end
    it { should_not be_valid }
  end
end
