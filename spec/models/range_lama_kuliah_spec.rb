require 'spec_helper'

describe RangeLamaKuliah do
  before { @range_lama_kuliah = RangeLamaKuliah.new(lama: "4 Tahun", bobot: "1") }

  subject{ @range_lama_kuliah }

  it { should respond_to(:lama) }
  it { should respond_to(:bobot) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When lama kuliah is blank" do
    before { @range_lama_kuliah.lama = "" }
    it { should_not be_valid }
  end

  describe "When bobot is blank" do
    before { @range_lama_kuliah.bobot = "" }
    it { should_not be_valid }
  end  

  describe "lama kuliah must be unique" do
    before do
      @range_lama_kuliah_dup = @range_lama_kuliah.dup
      @range_lama_kuliah_dup.save
    end
    it { should_not be_valid }
  end
end
