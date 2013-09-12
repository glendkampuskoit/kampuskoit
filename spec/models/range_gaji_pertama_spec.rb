require 'spec_helper'

describe RangeGajiPertama do
  before { @rangegajipertama = RangeGajiPertama.new(gaji_pertama: "10 Juta", bobot: "1") }

  subject{ @rangegajipertama }

  it { should respond_to(:gaji_pertama) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When range is blank" do
    before { @rangegajipertama.gaji_pertama = "" }
    it { should_not be_valid }
  end

  describe "range must be unique" do
    before do
      @rangegajipertama_dup = @rangegajipertama.dup
      @rangegajipertama_dup.save
    end
    it { should_not be_valid }
  end
end
