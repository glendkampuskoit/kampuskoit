require 'spec_helper'

describe RangePekerjaanPertama do
  before { @rangepekerjaanpertama = RangePekerjaanPertama.new(pekerjaan_pertama: "Staf IT", bobot: "1") }

  subject{ @rangepekerjaanpertama }

  it { should respond_to(:pekerjaan_pertama) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When range is blank" do
    before { @rangepekerjaanpertama.pekerjaan_pertama = "" }
    it { should_not be_valid }
  end

  describe "range must be unique" do
    before do
      @rangepekerjaanpertama_dup = @rangepekerjaanpertama.dup
      @rangepekerjaanpertama_dup.save
    end
    it { should_not be_valid }
  end
end
