require 'spec_helper'

describe RangeIpk do
  before { @range_ipk = RangeIpk.new(ipk: "3 sampai 3.5", bobot: "1") }

  subject{ @range_ipk }

  it { should respond_to(:ipk) }
  it { should respond_to(:bobot) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When ipk is blank" do
    before { @range_ipk.ipk = "" }
    it { should_not be_valid }
  end

  describe "When bobot is blank" do
    before { @range_ipk.ipk = "" }
    it { should_not be_valid }
  end

  describe "ipk must be unique" do
    before do
      @range_ipk_dup = @range_ipk.dup
      @range_ipk_dup.save
    end
    it { should_not be_valid }
  end
end
