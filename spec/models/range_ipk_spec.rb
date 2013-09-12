require 'spec_helper'

describe RangeIpk do
  before { @rangeipk = RangeIpk.new(ipk: "3 sampai 3.5", bobot: "1") }

  subject{ @rangeipk }

  it { should respond_to(:ipk) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When range is blank" do
    before { @rangeipk.ipk = "" }
    it { should_not be_valid }
  end

  describe "range must be unique" do
    before do
      @rangeipk_dup = @rangeipk.dup
      @rangeipk_dup.save
    end
    it { should_not be_valid }
  end
end
