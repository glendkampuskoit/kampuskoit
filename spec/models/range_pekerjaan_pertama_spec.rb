require 'spec_helper'

describe RangePekerjaanPertama do
  before { @range_pekerjaan_pertama = RangePekerjaanPertama.new(pekerjaan_pertama: "Staf IT", bobot: "1") }

  subject{ @range_pekerjaan_pertama }

  it { should respond_to(:pekerjaan_pertama) }
  it { should respond_to(:bobot) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When pekerjaan pertama is blank" do
    before { @range_pekerjaan_pertama.pekerjaan_pertama = "" }
    it { should_not be_valid }
  end

  describe "When bobot is blank" do
    before { @range_pekerjaan_pertama.bobot = "" }
    it { should_not be_valid }
  end

  describe "pekerjaan pertama must be unique" do
    before do
      @range_pekerjaan_pertama_dup = @range_pekerjaan_pertama.dup
      @range_pekerjaan_pertama_dup.save
    end
    it { should_not be_valid }
  end
end
