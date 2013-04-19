require 'spec_helper'

describe ProdiPrestasi do
  before { @prodiprestasi = ProdiPrestasi.new(prodi: FactoryGirl.create(:prodi), tahun: "2012", prestasi:"Juara Lomba Robotika Nasional") }

  subject{ @prodiprestasi }
  it { should respond_to(:tahun) }
  it { should respond_to(:prestasi) }
  it { should respond_to(:prodi) }

  it { should belong_to(:prodi) }

  describe "should be valid" do
    it { should be_valid }
  end

  describe "nama tahun blank is not valid" do
    before { @prodiprestasi.tahun = '' }
		it { should_not be_valid }
  end

  describe "nama prestasi blank is not valid" do
    before { @prodiprestasi.prestasi = '' }
		it { should_not be_valid }
  end

  describe "prodi, nama prestasi and tahun must be unique" do
    before do
      @prodifasil_dup = ProdiPrestasi.new(prodi: @prodiprestasi.prodi, 
        tahun: "2012", prestasi:"juara lomba robotika nasional")
      @prodifasil_dup.save
    end
    it { should_not be_valid }
  end
end
