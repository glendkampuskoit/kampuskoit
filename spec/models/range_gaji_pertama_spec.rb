require 'spec_helper'

describe RangeGajiPertama do
  before { @range_gaji_pertama = RangeGajiPertama.new(gaji_pertama: "10 Juta", bobot: "1") }

  subject{ @range_gaji_pertama }

  it { should respond_to(:gaji_pertama) }
  it { should respond_to(:bobot) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When gaji pertama is blank" do
    before { @range_gaji_pertama.gaji_pertama = "" }
    it { should_not be_valid }
  end

  describe "When bobot is blank" do
    before { @range_gaji_pertama.bobot = "" }
    it { should_not be_valid }
  end

  describe "gaji pertama must be unique" do
    before do
      @range_gaji_pertama_dup = @range_gaji_pertama.dup
      @range_gaji_pertama_dup.save
    end
    it { should_not be_valid }
  end
end
