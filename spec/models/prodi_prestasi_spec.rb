require 'spec_helper'

describe ProdiPrestasi do
  before { @prodiprestasi = ProdiPrestasi.new(tahun: "2012", prestasi:"Lomba Robotika Nasional") }

  subject{ @prodiprestasi }
  it { should respond_to(:tahun) }
  it { should respond_to(:prestasi) }

  it { should belong_to(:prodi) }

  describe "nama tahun blank is not valid" do
  		before { @prodiprestasi.tahun = '' }
		it { should_not be_valid }
  end

  describe "nama prestasi blank is not valid" do
  		before { @prodiprestasi.prestasi = '' }
		it { should_not be_valid }
  end
end
