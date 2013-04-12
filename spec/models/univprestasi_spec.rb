require 'spec_helper'

describe Univprestasi do
  before { @univprestasi = Univprestasi.new(tahun: "2012", prestasi:"Juara 1 Lomba Hacking competition") }

  subject{ @univprestasi }
  it { should respond_to(:tahun) }
  it { should respond_to(:prestasi) }

  it { should belong_to(:univ) }

  describe "When tahun is blank" do
    before { @univprestasi.tahun = " " }
    it { should_not be_valid }
  end
  describe "When prestasi is blank" do
    before { @univprestasi.prestasi = " " } 
    it { should_not be_valid }
  end
end
