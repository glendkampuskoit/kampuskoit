require 'spec_helper'

describe RangeGaji do
  
  before { @rangegaji = RangeGaji.new(range: "1 Juta sampai 3 juta", bobot: "1") }

  subject{ @rangegaji }

  it { should respond_to(:range) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When range is blank" do
    before { @rangegaji.range = "" }
    it { should_not be_valid }
  end

  describe "range must be unique" do
    before do
      @rangegaji_dup = @rangegaji.dup
      @rangegaji_dup.save
    end
    it { should_not be_valid }
  end
  
end
