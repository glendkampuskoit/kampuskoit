require 'spec_helper'

describe Univprestasi do
  before { @univprestasi = Univprestasi.new(univ: FactoryGirl.create(:univ), tahun: "2012", prestasi:"Juara 1 Lomba Hacking competition") }

  subject{ @univprestasi }

  it { should respond_to(:tahun) }
  it { should respond_to(:prestasi) }
  it { should respond_to(:univ) }

  it { should belong_to(:univ) }

  describe "should be valid" do
    it { should be_valid }
  end

  describe "When tahun is blank" do
    before { @univprestasi.tahun = " " }
    it { should_not be_valid }
  end
  describe "When prestasi is blank" do
    before { @univprestasi.prestasi = " " } 
    it { should_not be_valid }
  end

  describe "univ, prestasi, tahun must be unique with case insensitive" do
    before do
      @univprestasi_dup = Univprestasi.new(
        univ: @univprestasi.univ, 
        tahun: "2012", 
        prestasi:"Juara 1 lomba hacking competition")
      @univprestasi_dup.save
    end
    it { should_not be_valid }
  end
end
