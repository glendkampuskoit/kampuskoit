require 'spec_helper'

describe RangeLamaKuliah do
  before { @rangelamakuliah = RangeLamaKuliah.new(lama: "4 Tahun", bobot: "1") }

  subject{ @rangelamakuliah }

  it { should respond_to(:lama) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When range is blank" do
    before { @rangelamakuliah.lama = "" }
    it { should_not be_valid }
  end

  describe "range must be unique" do
    before do
      @rangelamakuliah_dup = @rangelamakuliah.dup
      @rangelamakuliah_dup.save
    end
    it { should_not be_valid }
  end
end
