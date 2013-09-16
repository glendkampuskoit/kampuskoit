require 'spec_helper'

describe RangeGaji do
  
  before { @range_gaji = RangeGaji.new(range: "1 Juta sampai 3 juta", bobot: "1") }

  subject{ @range_gaji }

  it { should respond_to(:range) }
  it { should respond_to(:bobot) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When gaji is blank" do
    before { @range_gaji.range = "" }
    it { should_not be_valid }
  end

  describe "When bobot is blank" do
    before { @range_gaji.bobot = "" }
    it { should_not be_valid }
  end

  describe "gaji must be unique" do
    before do
      @range_gaji_dup = @range_gaji.dup
      @range_gaji_dup.save
    end
    it { should_not be_valid }
  end
  
end
